package co.jp.mental.service.mi;

import java.util.List;

import co.jp.mental.BusinessInfo;
import co.jp.mental.repository.MentalScale;
import co.jp.mental.repository.MentalScaleDetail;


public class MentalInfo implements BusinessInfo{

    private List<MentalScale> ms;
    
    private List<MentalScaleDetail> msd;

    public List<MentalScale> getMs() {
        return ms;
    }

    public void setMs(List<MentalScale> ms) {
        this.ms = ms;
    }
    
    

    public List<MentalScaleDetail> getMsd() {
        return msd;
    }

    public void setMsd(List<MentalScaleDetail> msd) {
        this.msd = msd;
    }

    @Override
    public String toString() {
        return "MentalInfo [ms=" + ms + ", msd=" + msd + "]";
    }
    
    
}
