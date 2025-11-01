package co.jp.mental.domain;

import jakarta.validation.constraints.NotNull;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import co.jp.mental.Input;
import co.jp.mental.common.ApplicationContextHolder;
import co.jp.mental.common.Output;
import co.jp.mental.service.BasicService;

public abstract class BasicControl<O, I> {

    Logger logger = LoggerFactory.getLogger(BasicControl.class);

    public Output controller(String action, @NotNull Input input) {

        try {

            logger.info("$"+action+" 処理を開始しました。");
            BasicService<Output, Input> bs = ApplicationContextHolder.getBean(action + "Service", BasicService.class);
            return bs.run(input);

        } finally {
            logger.info("$"+action+" 処理を終了しました。");
        }

    }

    @PostMapping
    public abstract O doPost(@RequestBody I input);
}
