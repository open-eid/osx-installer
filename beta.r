// See /System/Library/Frameworks/CoreServices.framework/Frameworks/CarbonCore.framework/Headers/Script.h for language IDs.
data 'LPic' (5000) {
	$"0000" // Default language ID, 0 = English
	$"0001" // Number of entries in list
	// Entry 1
	$"0000" // Language ID, 0 = English
	$"0000" // Resource ID, 0 = STR#/TEXT/styl 5000
	$"0000" // Multibyte language, 0 = no
};

data 'STR#' (5000, "English buttons") {
	$"0006"
	$"0745 6E67 6C69 7368"                     // English
	$"0541 6772 6565"                          // Agree
	$"0844 6973 6167 7265 65"                  // Disagree
	$"0550 7269 6E74"                          // Print
	$"0753 6176 652E 2E2E"                     // Save...
	$"7A49 66"                                 // If
	$"2079 6F75 2061 6772 6565 2077 6974 6820" //  you agree with 
	$"7468 6520 7465 726D 7320 6F66 2074 6869" // the terms of thi
	$"7320 6C69 6365 6E73 652C 2063 6C69 636B" // s license, click
	$"2022 4167 7265 6522 2074 6F20 6163 6365" //  "Agree" to acce
	$"7373 2074 6865 2073 6F66 7477 6172 652E" // ss the software.
	$"2020 4966 2079 6F75 2064 6F20 6E6F 7420" //   If you do not 
	$"6167 7265 652C 2070 7265 7373 2022 4469" // agree, press "Di
	$"7361 6772 6565 2E22"                     // sagree."
};

data 'TEXT' (5000, "English") {
	"Please note that this is an eID software beta version for the "
	"operation system OSX 10.10, 10.9, 10.8, 10.7\n"
	"The software may not work properly and some faults may occur.\n"
	"We appreciate your feedback to abi@id.ee.\n"
};

data 'styl' (5000, "English") {
	$"0001" // Number of styles following = 1
	// Style 1.  This is used to display the first two lines in bold text.
	$"0000 0000" // Start character = 0
	$"0010" // Height = 16
	$"000C" // Ascent = 12
	$"0400" // Font family = 1024 (Lucida Grande)
	$"00" // Style bitfield, 0x1=bold 0x2=italic 0x4=underline 0x8=outline 0x10=shadow 0x20=condensed 0x40=extended
	$"02" // Style, unused?
	$"000C" // Size = 12 point
	$"0000 0000 0000" // Color, RGB
};
