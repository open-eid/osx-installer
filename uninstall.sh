#!/bin/bash

# UNINSTALLS Open-EID SOFTWARE

function remove_all {
    echo 'Removing Updater'
    for user in $(dscl . list /Users |grep -v -e '^_.*' -e Guest -e root -e daemon -e nobody); do
        sudo -u "${user}" /Library/PreferencePanes/id-updater.prefPane/Contents/Resources/id-updater-helper -remove
    done
    sudo rm -rf /Library/PreferencePanes/id-updater.prefPane

    echo 'Removing browser plug-ins and extensions'
    sudo rm -rf /Library/Internet\ Plug-Ins/esteidfirefoxplugin.bundle \
        /Library/Google/Chrome/NativeMessagingHosts/chrome-token-signing.app \
        /Library/Google/Chrome/NativeMessagingHosts/ee.ria.esteid.json \
        /Library/Application\ Support/Google/Chrome/External\ Extensions/ckjefchnfjhjfedoccjbhjpbncimppeg.json \
        /Library/Application\ Support/Mozilla/NativeMessagingHosts/ee.ria.esteid.json \
        /Library/Application\ Support/Mozilla/PKCS11Modules/onepinopenscpkcs11.json \
        /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{443830f0-1fff-4f9a-aa1e-444bafbc7319\}.xpi \
        /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{02274e0c-d135-45f0-8a9c-32b35110e10d\}.xpi \
        /Applications/Utilities/TokenSigningApp.app
    sudo profiles remove --identifier ee.ria.chrome-token-signing
    osascript -e 'tell application "System Events" to delete login item "TokenSigningApp"'

    echo 'Removing Drivers'
    sudo /usr/local/bin/opensc-uninstall
    echo y | sudo /Library/AWP/awp_uninstall.sh
    sudo rm -rf /Library/Security/tokend/EstEID.tokend
    sudo rm -rf /Applications/Utilities/EstEIDTokenApp.app

    echo 'Cleaning up'
    sudo pkgutil --forget ee.ria.open-eid
    sudo pkgutil --forget ee.ria.ID-updater
    sudo pkgutil --forget ee.ria.chrome-token-signing
    sudo pkgutil --forget ee.ria.safari-token-signing
    sudo pkgutil --forget ee.ria.firefox-token-signing
    sudo pkgutil --forget ee.ria.firefox-pkcs11-loader
    sudo pkgutil --forget ee.ria.esteid-tokend
    sudo pkgutil --forget ee.ria.esteid-ctk-tokend
    sudo pkgutil --forget org.opensc-project.mac
    sudo rm -rf /Library/Preferences/ee.ria.*

    echo 'Uninstall done!'
}

read -n1 -p 'Uninstall Open-EID Software? [y/N] '
echo

case $REPLY in
    y ) remove_all ;;
    * ) exit 0 ;;
esac
