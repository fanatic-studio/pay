package app.eco.pay.ui.module;

import app.eco.framework.extend.view.ExtendWebView;
import app.eco.framework.extend.view.webviewBridge.JsCallback;
import app.eco.framework.ui.eco;
import app.eco.pay.ui.entry.eco_pay;

public class WebModule {

    private static eco_pay __obj;

    private static eco_pay myApp() {
        if (__obj == null) {
            __obj = new eco_pay();
        }
        return __obj;
    }

    /***************************************************************************************************/
    /***************************************************************************************************/
    /***************************************************************************************************/

    /**
     * 官方微信支付
     *
     * @param payData
     * @param callback
     */
    public static void weixin(ExtendWebView webView, String payData, JsCallback callback) {
        myApp().weixin(webView.getContext(), payData, eco.MCallback(callback));
    }

    /**
     * 官方支付宝支付
     *
     * @param payData
     * @param callback
     */
    public static void alipay(ExtendWebView webView, String payData, JsCallback callback) {
        myApp().alipay(webView.getContext(), payData, eco.MCallback(callback));
    }

}

