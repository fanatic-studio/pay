//
//  ecoPay.m
//  Pods
//
//  Created by 高一 on 2019/3/2.
//

#import "ecoPay.h"
#import "ecoPayModule.h"
#import "ecoPayBridge.h"
#import "WeexInitManager.h"

WEEX_PLUGIN_INIT(ecoPay)
@implementation ecoPay

+ (instancetype) sharedManager {
    static dispatch_once_t onceToken;
    static ecoPay *instance;
    dispatch_once(&onceToken, ^{
        instance = [[ecoPay alloc] init];
    });
    return instance;
}

- (void) openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    if ([url.host isEqualToString:@"safepay"]) {
        // 支付宝处理支付结果
        [ecoPayModule alipayHandleOpenURL:url];
    }else if ([url.host isEqualToString:@"pay"]) {
        // 微信支付处理支付结果
        [ecoPayModule weixinHandleOpenURL:url];
    }
}

- (void) setJSCallModule:(JSCallCommon *)callCommon webView:(WKWebView*)webView
{
    [callCommon setJSCallAssign:webView name:@"ecoPay" bridge:[[ecoPayBridge alloc] init]];
}

@end
