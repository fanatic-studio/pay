package app.eco.pay.ui.module;

import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

import app.eco.pay.ui.entry.eco_pay;

public class WeexModule extends WXModule {

    private static final String TAG = "ecoPayModule";

    private eco_pay __obj;

    private eco_pay myApp() {
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
    @JSMethod
    public void weixin(String payData, JSCallback callback) {
        myApp().weixin(mWXSDKInstance.getContext(), payData, callback);
    }

    /**
     * 官方支付宝支付
     *
     * @param payData
     * @param callback
     */
    @JSMethod
    public void alipay(String payData, JSCallback callback) {
        myApp().alipay(mWXSDKInstance.getContext(), payData, callback);
    }
}

