package app.vd.pay.ui.module;

import app.vd.framework.extend.view.ExtendWebView;
import app.vd.framework.extend.view.webviewBridge.JsCallback;
import app.vd.framework.ui.vd;
import app.vd.pay.ui.entry.vd_pay;

public class WebModule {

    private static vd_pay __obj;

    private static vd_pay myApp() {
        if (__obj == null) {
            __obj = new vd_pay();
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
        myApp().weixin(webView.getContext(), payData, vd.MCallback(callback));
    }

    /**
     * 官方支付宝支付
     *
     * @param payData
     * @param callback
     */
    public static void alipay(ExtendWebView webView, String payData, JsCallback callback) {
        myApp().alipay(webView.getContext(), payData, vd.MCallback(callback));
    }

}

