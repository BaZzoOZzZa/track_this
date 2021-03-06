#import "WindowObserverPlugin.h"
#if __has_include(<window_observer/window_observer-Swift.h>)
#import <window_observer/window_observer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "window_observer-Swift.h"
#endif

@implementation WindowObserverPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftWindowObserverPlugin registerWithRegistrar:registrar];
}
@end
