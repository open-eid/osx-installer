#!/bin/bash

#sh notarize.sh Open-Eid-1.2.3.4.dmg ee.ria.open-eid user@name.ee password

xcrun altool --notarize-app --file $1 --primary-bundle-id $2 -u $3 -p $4 --output-format xml > req.plist
RequestUUID=$(/usr/libexec/PlistBuddy -c "print :notarization-upload:RequestUUID" req.plist)
echo "RequestUUID: $RequestUUID"

while :
do
  xcrun altool --notarization-info $RequestUUID -u $3 -p $4 --output-format xml > status.plist
  status="$(/usr/libexec/PlistBuddy -c "print :notarization-info:Status" status.plist)"
  echo "Status: $status"
  case $status in
  "success")
    xcrun stapler staple $1;
    curl $(/usr/libexec/PlistBuddy -c "print :notarization-info:LogFileURL" status.plist) > status.log
    exit 0
    ;;
  "in progress"|"")
    sleep 10
    ;;
  *)
    curl $(/usr/libexec/PlistBuddy -c "print :notarization-info:LogFileURL" status.plist) > status.log
    exit 1
    ;;
  esac
done
