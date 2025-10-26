package co.jp.mental.service.test;

import co.jp.mental.BusinessInfo;

public class TestInfo implements BusinessInfo{

    private int result;

    private String msg;

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "BusinessInfo [result=" + result + ", msg=" + msg + "]";
    }
}