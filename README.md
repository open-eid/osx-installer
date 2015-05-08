osx-installer
=============

A .DMG with DigiDoc, ID-card utility and package with various drivers.

1. Fetch the source

        git clone --recursive https://github.com/open-eid/osx-installer
        cd osx-installer

2. Download dependencies to packages folder
   * chrome-token-signing
   * esteidfirefoxplugin
   * esteidpkcs11loader
   * esteid-pkcs11
   * esteid-pkcs11-old
   * esteid-tokend
   * esteid-tokend-old
   * updater

3. Run make.sh script, optional parameter CN from keychain installer signing  certificate

        sh make.sh 3.11.0.0.BETA

4. Execute

        open estonianidcard_3.11.0.0.BETA.dmg 

## Support
Official builds are provided through official distribution point [installer.id.ee](https://installer.id.ee). If you want support, you need to be using official builds. Contact for assistance by email [abi@id.ee](mailto:abi@id.ee) or [www.id.ee](http://www.id.ee).

Source code is provided on "as is" terms with no warranty (see license for more information). Do not file Github issues with generic support requests.