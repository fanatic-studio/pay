//
//  ecoPayBridge.m
//  ecoApp
//
//  Created by 高一 on 2019/1/6.
//

#import "ecoPayBridge.h"
#import "ecoPayModule.h"

@interface ecoPayBridge ()

@property (nonatomic, strong) ecoPayModule *pay;

@end

@implementation ecoPayBridge

- (void)initialize
{
    if (self.pay == nil) {
        self.pay = [[ecoPayModule alloc] init];
    }
}

- (void)weixin:(NSDictionary *)payData callback:(WXModuleKeepAliveCallback)callback
{
    [self.pay weixin:payData callback:callback];
}

- (void)alipay:(NSString*)payData callback:(WXModuleKeepAliveCallback)callback
{
    [self.pay alipay:payData callback:callback];
}

@end
