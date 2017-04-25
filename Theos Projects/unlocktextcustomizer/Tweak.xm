NSString *settingsPath = @"/var/mobile/Library/Preferences/com.captainpoprocks.UnlockTextCustomizer.plist";
NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
BOOL enabled = [[prefs objectForKey:@"enabled"] boolValue];
NSString *newtext = [prefs objectForKey:@"text"];
%hook SBUICallToActionLabel
- (void)setText:(id)unlockText {
if (enabled && (![newtext isEqualToString:@""] || newtext != nil)) {
  unlockText = newtext;
  %orig;
}
}
- (void)setText:(id)unlockText forLanguage:(id)language animated:(BOOL)animated {
if (enabled && (![newtext isEqualToString:@""] || newtext != nil)) {
  unlockText = newtext;
  %orig;
}
}
%end
