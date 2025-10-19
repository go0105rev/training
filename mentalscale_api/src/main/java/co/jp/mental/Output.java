package co.jp.mental;

public class Output {

    private CommonInfo commonInfo;
    
    private BusinessInfo businessInfo;
    
    public CommonInfo getCommonInfo() {
        return commonInfo;
    }

    public void setCommonInfo(CommonInfo commonInfo) {
        this.commonInfo = commonInfo;
    }
    

    public BusinessInfo getInfo() {
        return businessInfo;
    }

    public void setInfo(BusinessInfo info) {
        businessInfo = info;
    }
    
    @Override
    public String toString() {
        return "Output [commonInfo=" + commonInfo + ", Info=" + businessInfo + "]";
    }
}
