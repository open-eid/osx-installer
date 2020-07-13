#!/bin/bash

# UNINSTALLS Open-EID SOFTWARE

function remove_all {
    echo 'Removing Updater'
    for user in $(dscl . list /Users |grep -v -e '^_.*' -e Guest -e root -e daemon -e nobody); do
        sudo -u "${user}" /Library/PreferencePanes/id-updater.prefPane/Contents/Resources/id-updater-helper -remove
    done
    sudo rm -rf /Library/PreferencePanes/id-updater.prefPane

    echo 'Removing browser plug-ins and extensions'
    sudo rm -rf \
        /Library/Google/Chrome/NativeMessagingHosts/chrome-token-signing.app \
        /Library/Google/Chrome/NativeMessagingHosts/ee.ria.esteid.json \
        /Library/Application\ Support/Google/Chrome/External\ Extensions/ckjefchnfjhjfedoccjbhjpbncimppeg.json \
        /Library/Application\ Support/Mozilla/NativeMessagingHosts/ee.ria.esteid.json \
        /Library/Application\ Support/Mozilla/PKCS11Modules/onepinopenscpkcs11.json \
        /Library/Application\ Support/Mozilla/PKCS11Modules/idemiaawppkcs11.json \
        /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{443830f0-1fff-4f9a-aa1e-444bafbc7319\}.xpi \
        /Library/Application\ Support/Mozilla/Extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/\{02274e0c-d135-45f0-8a9c-32b35110e10d\}.xpi \
        /Applications/Utilities/TokenSigningSafariHelper.app
    base_ver="10.15.99"
    if [ $(echo -e $base_ver"\n"$(sw_vers -productVersion) | sort -V | tail -1) == "$base_ver" ]; then 
        sudo profiles remove --identifier ee.ria.chrome-token-signing
    fi
    osascript -e 'tell application "System Events" to delete login item "TokenSigningSafariHelper"'
    PLIST=/Library/Preferences/org.mozilla.firefox.plist
    sudo defaults write ${PLIST} ExtensionSettings -dict-add "'{02274e0c-d135-45f0-8a9c-32b35110e10d}'" "{ 'installation_mode' = 'blocked'; }"
    sudo defaults write ${PLIST} ExtensionSettings -dict-add "'{443830f0-1fff-4f9a-aa1e-444bafbc7319}'" "{ 'installation_mode' = 'blocked'; }"

    echo 'Removing Drivers'
    sudo /usr/local/bin/opensc-uninstall
    sudo rm -rf /Library/Security/tokend/EstEID.tokend
    sudo rm -rf /Applications/Utilities/EstEIDTokenApp.app

    echo 'Cleaning up'
    sudo pkgutil --forget ee.ria.open-eid
    sudo pkgutil --forget ee.ria.ID-updater
    sudo pkgutil --forget ee.ria.chrome-token-signing
    sudo pkgutil --forget ee.ria.token-signing-chrome
    sudo pkgutil --forget ee.ria.token-signing-firefox
    sudo pkgutil --forget ee.ria.token-signing-chrome-policy
    sudo pkgutil --forget ee.ria.chrome-token-signing-policy
    sudo pkgutil --forget ee.ria.safari-token-signing
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
