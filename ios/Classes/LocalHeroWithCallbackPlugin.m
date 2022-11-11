#import "LocalHeroWithCallbackPlugin.h"
#if __has_include(<local_hero_with_callback_with_callback_with_callback/local_hero_with_callback_with_callback_with_callback-Swift.h>)
#import <local_hero_with_callback_with_callback_with_callback/local_hero_with_callback_with_callback_with_callback-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "local_hero_with_callback_with_callback_with_callback-Swift.h"
#endif

@implementation LocalHeroWithCallbackPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLocalHeroWithCallbackPlugin registerWithRegistrar:registrar];
}
@end
