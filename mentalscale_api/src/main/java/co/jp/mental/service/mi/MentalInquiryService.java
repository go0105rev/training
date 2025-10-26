package co.jp.mental.service.mi;

import org.springframework.stereotype.Service;

import co.jp.mental.Output;
import co.jp.mental.domain.mi.MiInput;
import co.jp.mental.service.BasicService;

/**
 * メンタルスケール結果照会。
 */
@Service
public class MentalInquiryService implements BasicService<Output, MiInput>{

    @Override
    public Output run(MiInput I) {
        return null;
    }
    
}