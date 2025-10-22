package co.jp.mental.domain.mi;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.Output;
import co.jp.mental.domain.BasicControl;

/**
 * メンタルスケール結果照会。
 */
@RestController
@RequestMapping("/mi")
public class MentalInquiryController implements BasicControl<Output,MiInput>{

    @Override
    public Output doGet(MiInput input) {
        return controller("mentalInquiry", null);
    }

    @Override
    public Output doPost(MiInput input) {
        return controller("mentalInquiry", input);
    }
    
    
}