#!/bin/bash

# UNINSTALLS Open-EID SOFTWARE

function remove_all {

    for user in $(dscl . list /Users |grep -v -e '^_.*' -e Guest -e root -e daemon -e nobody); do
        sudo -u "${user}" /Library/PreferencePanes/id-updater.prefPane/Contents/Resources/id-updater-helper -remove
    done
    sudo rm -rf /Library/PreferencePanes/id-updater.prefPane

    echo 'Removing browser plug-ins'
    sudo rm -rf /Library/Internet\ Plug-Ins/esteidfirefoxplugin.bundle
    sudo rm -rf /Library/Google/Chrome/NativeMessagingHosts/chrome-token-signing.app
    sudo rm -rf /Library/Google/Chrome/NativeMessagingHosts/ee.ria.esteid.json
    sudo rm -rf /Library/Application\ Support/Google/Chrome/External\ Extensions/ckjefchnfjhjfedoccjbhjpbncimppeg.json

    echo 'Removing Mozilla extension'
    sudo rm -rf /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{aa84ce40-4253-a00a-8cd6-0800200f9a6*

    echo 'Removing Tokend plugin'
    sudo rm -rf /Library/Security/tokend/EstEID.tokend
    sudo rm -rf /System/Library/Security/tokend/EstEID.tokend

    echo 'Removing libraries'
    sudo rm -rf /Library/EstonianIDCard

    sudo rm -rf /var/db/receipts/ee.ria.open-eid.* \
        /var/db/receipts/ee.ria.ID-updater.* \
        /var/db/receipts/ee.ria.chrome-token-signing.* \
        /var/db/receipts/ee.ria.esteid-pkcs11* \
        /var/db/receipts/ee.ria.esteid-tokend* \
        /var/db/receipts/ee.ria.firefox-pkcs11-loader.* \
        /var/db/receipts/ee.ria.firefox-token-signing.*
    sudo rm -rf /Library/Preferences/ee.ria.*

    echo 'Uninstall done!'
}

read -n1 -p 'Uninstall Open-EID Software? [y/N] '
echo

case $REPLY in
    y ) remove_all ;;
    * ) exit 0 ;;
esac
