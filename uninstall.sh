#!/bin/bash

# UNINSTALLS ESTONIAN ID CARD SOFTWARE

function remove_all {

    sudo launchctl list | grep 'id updater task' > /dev/null
    UPDATER_STATUS=$?
    if [ "$UPDATER_STATUS" == "0" ] ; then
        echo 'Periodical updates checking detected, removing...'
        sudo /Library/PreferencePanes/id-updater.prefPane/Contents/Resources/id-updater-helper -remove
    else
        echo 'Periodical updates checking not detected'
    fi
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

    echo 'Removing EstonianIDCard libraries'
    sudo rm -rf /Library/EstonianIDCard

    sudo rm -rf /var/db/receipts/ee.ria.*
    sudo rm -rf /Library/Preferences/ee.ria.*

    echo 'Uninstall done!'
}

read -n1 -p 'Uninstall Estonian ID Card Software? [y/N] '
echo

case $REPLY in
    y ) remove_all ;;
    * ) exit 0 ;;
esac
