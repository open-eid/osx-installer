#!/bin/bash

# UNINSTALLS Open-EID SOFTWARE

function remove_all {

    for user in $(dscl . list /Users |grep -v -e '^_.*' -e Guest -e root -e daemon -e nobody); do
        sudo -u "${user}" /Library/PreferencePanes/id-updater.prefPane/Contents/Resources/id-updater-helper -remove
    done
    sudo rm -rf /Library/PreferencePanes/id-updater.prefPane

    echo 'Removing browser plug-ins'
    sudo rm -rf /Library/Internet\ Plug-Ins/esteidfirefoxplugin.bundle \
        /Library/Google/Chrome/NativeMessagingHosts/chrome-token-signing.app \
        /Library/Google/Chrome/NativeMessagingHosts/ee.ria.esteid.json \
        /Library/Application\ Support/Google/Chrome/External\ Extensions/ckjefchnfjhjfedoccjbhjpbncimppeg.json \
        /Library/Application\ Support/Mozilla/NativeMessagingHosts/ee.ria.esteid.json \
        /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{443830f0-1fff-4f9a-aa1e-444bafbc7319\}.xpi

    echo 'Removing Mozilla PKCS11 loader extension'
    sudo rm -rf /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{02274e0c-d135-45f0-8a9c-32b35110e10d\}.xpi

    echo 'Removing Drivers'
    sudo rm -rf /Library/OpenSC

    echo 'Removing libraries'
    sudo rm -rf /Library/EstonianIDCard

    sudo rm -rf \
        /var/db/receipts/ee.ria.open-eid.* \
        /var/db/receipts/ee.ria.ID-updater.* \
        /var/db/receipts/ee.ria.chrome-token-signing.* \
        /var/db/receipts/ee.ria.esteid-pkcs11* \
        /var/db/receipts/ee.ria.esteid-tokend* \
        /var/db/receipts/ee.ria.firefox-pkcs11-loader.* \
        /var/db/receipts/ee.ria.firefox-token-signing.* \
        /var/db/receipts/org.opensc-project.mac.*
    sudo rm -rf /Library/Preferences/ee.ria.*

    echo 'Uninstall done!'
}

read -n1 -p 'Uninstall Open-EID Software? [y/N] '
echo

case $REPLY in
    y ) remove_all ;;
    * ) exit 0 ;;
esac
