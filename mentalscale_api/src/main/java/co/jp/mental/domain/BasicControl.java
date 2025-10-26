package co.jp.mental.domain;

import jakarta.validation.constraints.NotNull;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import co.jp.mental.ApplicationContextHolder;
import co.jp.mental.Input;
import co.jp.mental.Output;
import co.jp.mental.service.BasicService;

public abstract class BasicControl<O, I> {

    Logger logger = LoggerFactory.getLogger(BasicControl.class);

    public Output controller(String action, @NotNull Input input) {

        logger.info(input.toString());
        BasicService<Output, Input> bs = ApplicationContextHolder.getBean(action + "Service", BasicService.class);

        return bs.run(input);

    }

    @GetMapping
    public abstract O doGet();

    @PostMapping
    public abstract O doPost(@RequestBody I input);
}
