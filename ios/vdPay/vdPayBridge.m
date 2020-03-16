//
//  vdPayBridge.m
//  vdApp
//
//  Created by 高一 on 2019/1/6.
//

#import "vdPayBridge.h"
#import "vdPayModule.h"

@interface vdPayBridge ()

@property (nonatomic, strong) vdPayModule *pay;

@end

@implementation vdPayBridge

- (void)initialize
{
    if (self.pay == nil) {
        self.pay = [[vdPayModule alloc] init];
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
