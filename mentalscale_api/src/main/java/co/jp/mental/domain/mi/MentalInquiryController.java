package co.jp.mental.domain.mi;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.common.Output;
import co.jp.mental.domain.BasicControl;

/**
 * メンタルスケール結果照会。
 */
@RestController
@RequestMapping("/mi")
@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS })
public class MentalInquiryController extends BasicControl<Output, MiInput> {

    @Override
    public Output doPost(MiInput input) {
        return controller("mentalInquiry", input);
    }

    @GetMapping
    public Output doGet() {
        return controller("mentalInquiry", new MiInput());
    }
}
