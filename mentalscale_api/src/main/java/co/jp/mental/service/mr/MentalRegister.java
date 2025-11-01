package co.jp.mental.service.mr;

import co.jp.mental.BusinessInfo;
import co.jp.mental.common.ResStatus;

public class MentalRegister implements BusinessInfo {

    private ResStatus res;
    
    private String quesDetail;

    public ResStatus getRes() {
        return res;
    }

    public void setRes(ResStatus res) {
        this.res = res;
    }

    
    public String getQuesDetail() {
        return quesDetail;
    }

    public void setQuesDetail(String quesDetail) {
        this.quesDetail = quesDetail;
    }

    @Override
    public String toString() {
        return "MentalRegister [res=" + res + ", quesDetail=" + quesDetail + "]";
    }

}
