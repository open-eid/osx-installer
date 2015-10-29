#!/bin/bash

SOURCE=$( dirname "${BASH_SOURCE[0]}" )
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
    ARGS=(--version $1 --sign "$2")
fi

mkdir -p root packages

pkgbuild "${ARGS[@]}" --root root --scripts scripts --id ee.ria.open-eid \
    packages/open-eid.pkg
productbuild "${ARGS[@]}" --distribution ${SOURCE}/distribution.xml \
    --package-path packages/ --resources . Open-EID.pkg

setfile -a E Open-EID.pkg
setfile -a V background.png
cp ${SOURCE}/DS_Store .DS_Store
hdiutil create Open-EID_$1.dmg -ov -volname Open-EID \
    -srcfolder Open-EID.pkg \
    -srcfolder ${SOURCE}/uninstall.sh \
    -srcfolder background.png \
    -srcfolder .DS_Store

rmdir root
rm -rf .DS_Store background.png Open-EID.pkg License.txt scripts
