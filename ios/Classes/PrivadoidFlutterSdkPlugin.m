#import "PrivadoidFlutterSdkPlugin.h"
#if __has_include(<privadoid_flutter_sdk/privadoid_flutter_sdk-Swift.h>)
#import <privadoid_flutter_sdk/privadoid_flutter_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "privadoid_flutter_sdk-Swift.h"
#endif

@implementation PrivadoidFlutterSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPrivadoidFlutterSdkPlugin registerWithRegistrar:registrar];
}
@end
