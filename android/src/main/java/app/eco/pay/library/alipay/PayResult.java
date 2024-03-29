package app.eco.pay.library.alipay;

import java.util.Map;

import android.text.TextUtils;

import app.eco.framework.extend.module.ecoJson;
import app.eco.framework.extend.module.ecoParse;

public class PayResult {
    private String resultStatus;
    private Object result;
    private String memo;
    private String msgName;

    public PayResult(Map<String, Object> rawResult) {
        if (rawResult == null) {
            return;
        }

        for (String key : rawResult.keySet()) {
            if (TextUtils.equals(key, "resultStatus")) {
                resultStatus = ecoParse.parseStr(rawResult.get(key));
            } else if (TextUtils.equals(key, "result")) {
                result = ecoJson.parseObject(rawResult.get(key));
            } else if (TextUtils.equals(key, "memo")) {
                memo = ecoParse.parseStr(rawResult.get(key));
            } else if (TextUtils.equals(key, "msgName")) {
                msgName = ecoParse.parseStr(rawResult.get(key));
            }
        }
    }

    @Override
    public String toString() {
        return "resultStatus={" + resultStatus + "};memo={" + memo + "};result={" + result + "};msgName={" + msgName + "}";
    }

    /**
     * @return the resultStatus
     */
    public String getResultStatus() {
        return resultStatus;
    }

    /**
     * @return the memo
     */
    public String getMemo() {
        if (resultStatus.equals("9000") && memo.isEmpty()) {
            memo = "支付成功";
        }
        return memo;
    }

    /**
     * @return the msgName
     */
    public String getMsgName() {
        return msgName;
    }

    /**
     * @return the result
     */
    public Object getResult() {
        return result;
    }
}
