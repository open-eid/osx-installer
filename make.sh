#!/bin/bash

SOURCE=$( dirname "${BASH_SOURCE[0]}" )
tmpdir=$(mktemp -d /tmp/hdiutil.XXXXX)
if [[ $1 == *BETA* ]]
then
    cp ${SOURCE}/background_beta.png background.png
else
    cp ${SOURCE}/background_release.png background.png
fi
cp ${SOURCE}/License.txt .
cp -r ${SOURCE}/scripts .
defaults write $PWD/scripts/version.plist version $1

if [ -z "$2" ]
then
    ARGS=(--version $1)
else
    ARGS=(--version $1 --sign "Developer ID Installer: $2")
fi

mkdir -p root packages

pkgbuild "${ARGS[@]}" --root root --scripts scripts --id ee.ria.open-eid \
    packages/open-eid.pkg
productbuild "${ARGS[@]}" --distribution ${SOURCE}/distribution.xml \
    --package-path packages/ --resources . Open-EID.pkg
productbuild "${ARGS[@]}" --distribution ${SOURCE}/plugins.xml \
    --package-path packages/ --resources . Open-EID-plugins_$1.pkg

cp ${SOURCE}/DS_Store ${tmpdir}/.DS_Store
cp Open-EID.pkg background.png ${SOURCE}/uninstall.sh ${tmpdir}
setfile -a E ${tmpdir}/Open-EID.pkg
setfile -a V ${tmpdir}/background.png
hdiutil create Open-EID_$1.dmg -ov -volname Open-EID -srcfolder ${tmpdir}

rmdir root
rm -rf .DS_Store background.png Open-EID.pkg License.txt scripts ${tmpdir}

if [ ! -z "$2" ]
then
    codesign -s "Developer ID Application: $2" -f Open-EID_$1.dmg
fi
