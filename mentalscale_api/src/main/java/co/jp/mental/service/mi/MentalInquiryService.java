package co.jp.mental.service.mi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import co.jp.mental.Output;
import co.jp.mental.domain.mi.MiInput;
import co.jp.mental.repository.MentalScale;
import co.jp.mental.repository.MentalScaleRepository;
import co.jp.mental.service.BasicService;

/**
 * メンタルスケール結果照会。
 */
@Service
public class MentalInquiryService implements BasicService<Output, MiInput>{

    @Autowired
    MentalScaleRepository repository;
    
    @Override
    public Output run(MiInput input) {
        
        Sort sort=Sort.by("mscaleNum").ascending().and(Sort.by("userId").ascending());

        List<MentalScale> lst = repository.findAll(sort);
        MentalInfo mi = new MentalInfo();
        mi.setMe(lst);
        
        Output ou =new Output();
        ou.setInfo(mi);

        return ou;
    }
    
}