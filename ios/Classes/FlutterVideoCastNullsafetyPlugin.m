#import "FlutterVideoCastNullsafetyPlugin.h"
#if __has_include(<flutter_video_cast_nullsafety/flutter_video_cast_nullsafety-Swift.h>)
#import <flutter_video_cast_nullsafety/flutter_video_cast_nullsafety-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_video_cast_nullsafety-Swift.h"
#endif

@implementation FlutterVideoCastNullsafetyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterVideoCastNullsafetyPlugin registerWithRegistrar:registrar];
}
@end
