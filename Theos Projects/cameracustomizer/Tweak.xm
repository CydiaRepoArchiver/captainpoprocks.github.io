NSString *settingsPath = @"/var/mobile/Library/Preferences/com.captainpoprocks.cameracustomizer.plist";
NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
BOOL squaremodeenabled = [[prefs objectForKey:@"squaremodeenabled"] boolValue];
BOOL livefiltersenabled = [[prefs objectForKey:@"livefiltersenabled"] boolValue];
BOOL portraitmodefrontenabled = [[prefs objectForKey:@"portraitmodefrontenabled"] boolValue];
BOOL portraitmodebackenabled = [[prefs objectForKey:@"portraitmodebackenabled"] boolValue];
BOOL burstmodefrontenabled = [[prefs objectForKey:@"burstmodefrontenabled"] boolValue];
BOOL burstmodebackenabled = [[prefs objectForKey:@"burstmodebackenabled"] boolValue];
BOOL panoramamodeenabled = [[prefs objectForKey:@"panoramamodeenabled"] boolValue];
BOOL timelapsefrontenabled = [[prefs objectForKey:@"timelapsefrontenabled"] boolValue];
BOOL timelapsebackenabled = [[prefs objectForKey:@"timelapsebackenabled"] boolValue];
BOOL slomoenabled = [[prefs objectForKey:@"slomoenabled"] boolValue];
BOOL hdrfrontenabled = [[prefs objectForKey:@"hdrfrontenabled"] boolValue];
BOOL hdrbackenabled = [[prefs objectForKey:@"hdrbackenabled"] boolValue];


%hook CAMCaptureCapabilities

- (bool)isSquareModeSupported {
  return (squaremodeenabled);
}

- (bool)isLiveFilteringSupported {
  if (!livefiltersenabled) {
    return false;
  }
  else {
  return true;
}
}

- (bool)isFrontPortraitModeSupported {
  if (!portraitmodefrontenabled) {
    return false;
  }
  else {
  return true;
}
}


-(bool)isRearBurstSupported {
  if (!burstmodebackenabled) {
    return false;
  }
  else {
  return true;
}
}

-(bool)isBackPanoramaSupported {
  if (!panoramamodeenabled) {
    return false;
  }
  else {
  return true;
}
}

-(bool)isBackTimelapseSupported {
  if (!timelapsebackenabled) {
    return false;
  }
  else {
  return true;
}
}

-(bool)isFrontTimelapseSupported {
  if (!timelapsefrontenabled) {
    return false;
  }
  else {
  return true;
}
}

-(bool)isBackSlomoSupported {
  if (!slomoenabled) {
    return false;
  }
  else {
  return true;
}
}

-(bool)isBackHDROnSupported {
  if (!hdrbackenabled) {
    return false;
  }
  else {
  return true;
}
}

-(bool)isFrontHDROnSupported {
  if (!hdrfrontenabled) {
    return false;
  }
  else {
  return true;
}
}

%end
