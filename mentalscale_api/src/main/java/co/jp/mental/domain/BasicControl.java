package co.jp.mental.domain;

import org.springframework.web.bind.annotation.RequestBody;

import co.jp.mental.ApplicationContextHolder;
import co.jp.mental.Input;
import co.jp.mental.Output;
import co.jp.mental.service.BasicService;

public interface BasicControl<O, I> {

    public default Output controller(String action, Input input) {
//        TODO未推測対応
        BasicService<Output, Input> bs = ApplicationContextHolder.getBean(action + "Service", BasicService.class);
        return bs.run(input);
    };

    public O doGet();
    public O doPost(@RequestBody I input);
}
