package co.jp.mental.service.mi;

import java.util.List;

import co.jp.mental.BusinessInfo;
import co.jp.mental.repository.MentalScale;


public class MentalInfo implements BusinessInfo{

    private List<MentalScale> me;

    public List<MentalScale> getMe() {
        return me;
    }

    public void setMe(List<MentalScale> me) {
        this.me = me;
    }

    @Override
    public String toString() {
        return "MentalInfo [me=" + me + "]";
    }
    
    
}
