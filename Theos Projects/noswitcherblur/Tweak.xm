NSString *settingsPath = @"/var/mobile/Library/Preferences/com.captainpoprocks.noswitcherblur.plist";
NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];

%hook SBAppSwitcherSettings

- (double) deckSwitcherBackgroundBlurRadius {
	return 0;

}

%end
