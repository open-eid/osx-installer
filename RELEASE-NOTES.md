Packaging version [22.06](https://github.com/open-eid/osx-installer/releases/tag/v22.06) release notes
--------------------------------------------
- Remove OpenSC from package (#61)
- Remove Firefox PKCS11 loader from package (#57)
- Limit installation to macOS 10.15 (#56)
- Move translations to resources (#53)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v22.01...v22.06)

Packaging version [22.01](https://github.com/open-eid/osx-installer/releases/tag/v22.01) release notes
--------------------------------------------
- Include Web-eID support

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v21.02...v22.01)

Packaging version [21.02](https://github.com/open-eid/osx-installer/releases/tag/v21.02) release notes
--------------------------------------------
- Allow unselect chrome policy on reinstall (#47)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v20.12...v21.02)

Packaging version [20.12](https://github.com/open-eid/osx-installer/releases/tag/v20.12) release notes
--------------------------------------------
- Allow unselect chrome policy on reinstall (#47)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v20.09...v20.12)

Packaging version [20.09](https://github.com/open-eid/osx-installer/releases/tag/v20.09) release notes
--------------------------------------------
- Disable chrome policy on macOS 10.16 (#45)
- Don't install chrome policy when extension is not installed (#43)
- Sync plugins package with distribution package (#44)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v20.05...v20.09)

Packaging version [20.05](https://github.com/open-eid/osx-installer/releases/tag/v20.05) release notes
--------------------------------------------
- Raise minimum supported macOS version to 10.13 (#41)
- Remove firefox-token-signing (#42)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v20.01...v20.05)

Packaging version [20.01](https://github.com/open-eid/osx-installer/releases/tag/v20.01) release notes
--------------------------------------------
- Remove Firefox extensions (#39)
- Removed esteid-tokend from installer (#38)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v19.10...v20.01)

Packaging version [19.10](https://github.com/open-eid/osx-installer/releases/tag/v19.10) release notes
--------------------------------------------
- Support new chrome-token-signing package layout

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v19.07...v19.10)

Packaging version [19.07](https://github.com/open-eid/osx-installer/releases/tag/v19.07) release notes
--------------------------------------------
- Remove IDEMIA PKCS11 driver

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v19.02...v19.07)

Packaging version [19.02](https://github.com/open-eid/osx-installer/releases/tag/v19.02) release notes
--------------------------------------------
- Use new CTK Tokend for IDEMIA cards (#22)

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v18.12...v19.02)

Packaging version [18.12](https://github.com/open-eid/osx-installer/releases/tag/v18.12) release notes
--------------------------------------------
- Include IDEMIA drivers

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v18.09...v18.12)

Packaging version [18.09](https://github.com/open-eid/osx-installer/releases/tag/v18.09) release notes
--------------------------------------------
- Add safari-token-signing on macOS >= 10.12
- Use esteid-ctk-tokend for all cards on macOS >= 10.12
- Remove legacy NPAPI plugin from macOS >= 10.14

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v18.06...v18.09)

Packaging version [18.06](https://github.com/open-eid/osx-installer/releases/tag/v18.06) release notes
--------------------------------------------
- DigiDoc4 Client added to install scripts
- DigiDoc4 info and store link added to installer package

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v18.03...v18.06)

Packaging version [18.03](https://github.com/open-eid/osx-installer/releases/tag/v18.03) release notes
--------------------------------------------
- Cleanup uninstall script

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v18.02...v18.03)

Packaging version [18.02](https://github.com/open-eid/osx-installer/releases/tag/v18.02) release notes
--------------------------------------------
- Revert to esteid-token
- Add esteid-ctk-token for ECC cards 

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v17.12...v18.02)

Packaging version [17.12](https://github.com/open-eid/osx-installer/releases/tag/v17.12) release notes
--------------------------------------------
- Include new Fireofx PKCS11 loader for Firefox 58
- macOS 10.10 support is now deprecated

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v17.10...v17.12)

Packaging version [17.10](https://github.com/open-eid/osx-installer/releases/tag/v17.10) release notes
--------------------------------------------
- Remove NPAPI plugin
- Bundle OpenSC driver

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v17.06...v17.10)

Packaging version [17.06](https://github.com/open-eid/osx-installer/releases/tag/v17.06) release notes
--------------------------------------------
- Sign DMG images

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v17.01...v17.06)

Packaging version [17.01](https://github.com/open-eid/osx-installer/releases/tag/v17.01) release notes
--------------------------------------------
- Uninstall chrome-token-signing Firefox components

[Full Changelog](https://github.com/open-eid/osx-installer/compare/v3.12.0...v17.01)


Packaging version 3.12 release notes
--------------------------------------
Changes compared to ver 3.11.1

- Improved installation package of eID software, it is now possible during installation process to customize the set of software components that will be installed. 
- Changed branding.
- Updated Updater paths.


Packaging version 3.11.1 release notes
--------------------------------------
Changes compared to ver 3.10.3

- Changed install path from /System/Library/Security/tokend to /Library/Security/tokend since on OS X 10.11 the entire /System folder is write protected by the kernel.
- Require service pack 3 on OSX 10.10
- Updated components:
https://github.com/open-eid/esteid-tokend/releases/tag/v3.11.0-beta
https://github.com/open-eid/esteid-pkcs11/releases/tag/v3.11.0-beta
https://github.com/open-eid/firefox-pkcs11-loader/releases/tag/v3.11.0
https://github.com/open-eid/chrome-token-signing/releases/tag/v1.0.2-beta2
https://github.com/open-eid/updater/releases/tag/v3.11.0


Packaging version 3.11 release notes
--------------------------------------
Changes compared to ver 3.10.2

- Check that on OS X 10.10 service pack 3 is installed


Packaging version 3.10.2 release notes
--------------------------------------
Changes compared to ver 3.10

- Added functionality for enabling NPAPI support in Chrome. OSX installer checks if Chrome is running and executes Updater. The -chrome-npapi flag is set by Updater.


Packaging version 3.10 release notes
--------------------------------------
Changes compared to ver 3.9.1

- Changed OSX installation package, SK's certificates are no longer installed to keychain, previously installed SK certificates are removed. The SK CA certificates are distributed through the operating system's native update mechanism. The CA certificates used by DigiDoc3 Client are now taken from TSL (Trust Service Status List).	
- Upgraded signing of OSX distribution packages, v2 signature is now used. 
- Removed Safari browser signing plug-in from OSX installation package, Firefox NPAPI plug-in is used instead. 


Packaging version 3.9.1 release notes
--------------------------------------
Changes compared to ver 3.9

- Started using QT version 5.3.1 in OSX environment.
- Removed test certificates' packaging for DigiDoc3 Client in OSX.


Packaging version 3.9 release notes
--------------------------------------
Changes compared to ver 3.8.2

- Improved ID-software installer in OSX, now the system's language is used also in installer.
- Added new Finnish certificates "VRK CA for Qualified Certificates - G2" or "VRK Gov. CA for Citizen Qualified Certificates - G2" to Finnish certificates' installation packages. 
- Added Finnish, Latvian, Lithuanian test certificates to test certificates' installation packages. 


Packaging version 3.8.1 release notes
--------------------------------------
Changes compared to ver 3.8.0

- Removed the removal of OpenSC package during installation of ID card software in OSX environment.


Packaging version 3.8.0 release notes
--------------------------------------

- Created browser integration package for OSX users that installs the components which are not accessible from Apple App Store and are needed in order to use ID card in addition to Mobile-ID in OSX environment. Discontinued packaging of the general ID-software package for OSX platform, the ID-software components are now distributed separately via Apple App Store and the browser integration package.
- Added support for OSX 10.9. Removed support for OSX 10.6.
- Added the ID-card software uninstalling script into OSX package.
