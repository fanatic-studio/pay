//
//  vdPay.m
//  Pods
//
//  Created by 高一 on 2019/3/2.
//

#import "vdPay.h"
#import "vdPayModule.h"
#import "vdPayBridge.h"
#import "WeexInitManager.h"

WEEX_PLUGIN_INIT(vdPay)
@implementation vdPay

+ (instancetype) sharedManager {
    static dispatch_once_t onceToken;
    static vdPay *instance;
    dispatch_once(&onceToken, ^{
        instance = [[vdPay alloc] init];
    });
    return instance;
}

- (void) openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    if ([url.host isEqualToString:@"safepay"]) {
        // 支付宝处理支付结果
        [vdPayModule alipayHandleOpenURL:url];
    }else if ([url.host isEqualToString:@"pay"]) {
        // 微信支付处理支付结果
        [vdPayModule weixinHandleOpenURL:url];
    }
}

- (void) setJSCallModule:(JSCallCommon *)callCommon webView:(WKWebView*)webView
{
    [callCommon setJSCallAssign:webView name:@"vdPay" bridge:[[vdPayBridge alloc] init]];
}

@end
