package co.jp.mental.domain.mr;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.common.Output;
import co.jp.mental.domain.BasicControl;

/**
 * メンタルスケール入力。
 */
@RestController
@RequestMapping("/mr")
@CrossOrigin(origins = "*", allowedHeaders = "*", methods = { RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS })
public class MentalRegisterController extends BasicControl<Output, MrInput> {

    @GetMapping
    public Output doGet(MrInput input) {
        return super.controller("mentalRegister", null);
    }

    @Override
    public Output doPost(MrInput input) {
        return super.controller("mentalRegister", input);
    }

}
