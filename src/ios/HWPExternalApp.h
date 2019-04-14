#import <Cordova/CDV.h>

@interface HWPExternalApp : CDVPlugin

- (void) openWhatsapp:(CDVInvokedUrlCommand*)command;
- (void) openPhone:(CDVInvokedUrlCommand*)command;

@end