osx-installer
=============

![European Regional Development Fund](https://github.com/open-eid/DigiDoc4-Client/blob/master/client/images/EL_Regionaalarengu_Fond.png "European Regional Development Fund - DO NOT REMOVE THIS IMAGE BEFORE 05.03.2020")

A .DMG package with various drivers and browser plugins.

1. Fetch the source

        git clone --recursive https://github.com/open-eid/osx-installer
        cd osx-installer

2. Download dependencies to packages folder
   * web-eid-native
   * web-eid-chrome
   * web-eid-chrome-policy
   * web-eid-firefox
   * firefox-pkcs11-loader
   * opensc
   * esteid-ctk-tokend
   * updater

3. Run make.sh script, optional parameter CN from keychain installer signing  certificate

        sh make.sh 22.1.0.0

4. Execute

        open Open-EID_22.1.0.0.dmg 

## Support
Official builds are provided through official distribution point [id.ee](https://www.id.ee/en/article/install-id-software/). If you want support, you need to be using official builds. Contact our support via [www.id.ee](http://www.id.ee) for assistance.

Source code is provided on "as is" terms with no warranty (see license for more information). Do not file Github issues with generic support requests.
