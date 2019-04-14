#import "HWPExternalApp.h"

@implementation HWPExternalApp

- (void)openWhatsapp:(CDVInvokedUrlCommand*)command
{
    NSString* phone = [[command arguments] objectAtIndex:0];
    NSString* link = [NSString stringWithFormat: @"whatsapp://send?phone=%@", phone];
    NSURL *whatsappURL = [NSURL URLWithString:link];
    
    if ([[UIApplication sharedApplication] canOpenURL: whatsappURL]) {
        [[UIApplication sharedApplication] openURL: whatsappURL];
    }
}

@end
