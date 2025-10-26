package co.jp.mental.domain.test;

import co.jp.mental.Input;

public class TestInput implements Input {

    private String action;
    
    private String msg;

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "TestInput [action=" + action + ", msg=" + msg + "]";
    }

}
