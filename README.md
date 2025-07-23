osx-installer
=============

![European Regional Development Fund](https://github.com/open-eid/DigiDoc4-Client/blob/master/client/images/EL_Regionaalarengu_Fond.png "European Regional Development Fund - DO NOT REMOVE THIS IMAGE BEFORE 05.03.2020")

A .DMG package with various drivers and browser plugins.

1. Fetch the source

        git clone https://github.com/open-eid/osx-installer
        cd osx-installer

2. Download dependencies to packages folder
   * [web-eid-native.pkg](https://github.com/web-eid/web-eid-app/releases)
   * [web-eid-chrome.pkg](https://github.com/web-eid/web-eid-app/releases)
   * [web-eid-firefox.pkg](https://github.com/web-eid/web-eid-app/releases)
   * [esteid-ctk-tokend.pkg](https://github.com/open-eid/esteid-ctk-tokend/releases)
   * [updater.pkg](https://github.com/open-eid/updater/releases)

3. Run make.sh script, optional parameter CN from keychain installer signing  certificate

        sh make.sh 25.7.0.0

4. Execute

        open Open-EID_25.7.0.0.dmg 

## Support
Official builds are provided through official distribution point [id.ee](https://www.id.ee/en/article/install-id-software/). If you want support, you need to be using official builds. Contact our support via [www.id.ee](http://www.id.ee) for assistance.

Source code is provided on "as is" terms with no warranty (see license for more information). Do not file Github issues with generic support requests.
