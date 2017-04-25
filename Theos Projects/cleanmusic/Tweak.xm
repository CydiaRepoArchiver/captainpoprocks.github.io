//NO STATUS BAR + FULL SCREEN NOW PLAYING

%hook UIViewController
- (bool)prefersStatusBarHidden{
    return true;
  }
%end

//REMOVE GRABBER FROM NOW PLAYING

%hook musicnowplaying
- (id)description {
    return %orig();
}
- (void)tintColorDidChange {
    }
%end
%ctor {
    %init(musicnowplaying = objc_getClass("Music.NowPlayingChevronView"));
}

//%hook Music.NowPlayingChevronView
//- (void)tintColorDidChange {
//}


//%hook UIView
//- (void)setTintColor:(id){
//    return [NSColor colorWithDeviceRed:0.000f green:0.502f blue:1.000f alpha:1.0f];
//
//}
//
//- (bool)_ancestorDefinesTintColor{
//    return true;
//}

//%end
