NSString *settingsPath = @"/var/mobile/Library/Preferences/com.captainpoprocks.snapchattweaks.plist";
NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
BOOL enablegeofilter = [[prefs objectForKey:@"enablegeofilter"] boolValue];
BOOL enableemojigroups = [[prefs objectForKey:@"enableemojigroups"] boolValue];
%hook SCIdentityTweaks;
-(bool) shouldEnableGeofilterPassport {
//  if (enablegeofilter) {
    return true;
//  } else {
//    %orig;
//  }
}
%end
%hook SCProtoTweaks
-(bool) isProtoYeezySeason {
//  if (enableemojigroups) {
    return true;
//  } else {
//    %orig;
//  }
}
-(bool) protoBerlinEnabled {
//  if (enableemojigroups) {
    return true;
//  } else {
//    %orig;
//  }
}
%end
