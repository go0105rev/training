package co.jp.mental.domain;

import co.jp.mental.ApplicationContextHolder;
import co.jp.mental.Input;
import co.jp.mental.Output;
import co.jp.mental.service.BasicService;

public interface BasicControl {

    public default Output controller(String action, Input input) {
        BasicService<Output, Input> bs = ApplicationContextHolder.getBean(action + "Service", BasicService.class);
        return bs.run(input);
    };

}
