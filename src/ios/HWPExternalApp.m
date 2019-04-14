#import "HWPExternalApp.h"

@implementation HWPExternalApp

- (void)openWhatsapp:(CDVInvokedUrlCommand*)command
{
    NSString* phone = [[command arguments] objectAtIndex:0];
    NSString* msg = [[command arguments] objectAtIndex:1];
    NSString* link = [NSString stringWithFormat: @"whatsapp://send?phone=%@&text=%@", phone, msg];
    NSURL *whatsappURL = [NSURL URLWithString:link];
    
    if ([[UIApplication sharedApplication] canOpenURL: whatsappURL]) {
        [[UIApplication sharedApplication] openURL: whatsappURL];
    }
}

- (void)openPhone:(CDVInvokedUrlCommand*)command
{
    NSString* phone = [[command arguments] objectAtIndex:0];
    NSString* link = [NSString stringWithFormat: @"tel:%@", phone];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:link]];
}

@end
