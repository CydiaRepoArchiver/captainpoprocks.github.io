NSString *settingsPath = @"/var/mobile/Library/Preferences/com.captainpoprocks.nosquaremode.plist";
NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];
%hook CAMCaptureCapabilities
- (bool)isSquareModeSupported {
	return (enabled);
}
%end
