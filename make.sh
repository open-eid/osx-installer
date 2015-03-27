#!/bin/bash

SOURCE=$( dirname "${BASH_SOURCE[0]}" )
if [[ $1 == *BETA* ]]
then
    cp ${SOURCE}/background_beta.png background.png
else
    cp ${SOURCE}/background_release.png background.png
fi
cp ${SOURCE}/License.txt .

if [ -z "$2" ]
then
    ARGS=(--version $1)
else
    ARGS=(--version $1 --sign "$2")
fi

mkdir -p root packages packages-dbg

pkgbuild "${ARGS[@]}" --root root --scripts ${SOURCE}/scripts --id ee.ria.estonianidcard \
    packages/estonianidcard.pkg
productbuild "${ARGS[@]}" --distribution ${SOURCE}/estonianidcard.dist.xml \
    --package-path packages/ --resources . estonianidcard.pkg
productbuild "${ARGS[@]}" --distribution ${SOURCE}/estonianidcard-dbg.dist.xml \
    --package-path packages-dbg/ estonianidcard-dbg_$1.pkg

setfile -a E estonianidcard.pkg
setfile -a V background.png
cp ${SOURCE}/DS_Store .DS_Store
hdiutil create estonianidcard_$1.dmg -ov -volname estonianidcard \
    -srcfolder estonianidcard.pkg \
    -srcfolder ${SOURCE}/uninstall.sh \
    -srcfolder background.png \
    -srcfolder .DS_Store

rmdir root
rm .DS_Store background.png estonianidcard.pkg License.txt
