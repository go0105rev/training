package co.jp.mental.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestBody;

import co.jp.mental.ApplicationContextHolder;
import co.jp.mental.Input;
import co.jp.mental.Output;
import co.jp.mental.service.BasicService;

public abstract class BasicControl<O, I> {

    Logger logger = LoggerFactory.getLogger(BasicControl.class);

    public Output controller(String action, Input input) {

        BasicService<Output, Input> bs = ApplicationContextHolder.getBean(action + "Service", BasicService.class);
        logger.info(action + "コントローラー処理を開始しました。-->" + bs.toString());
        Output result=bs.run(input);
        logger.info(action + "コントローラー処理を終了しました。-->" + bs.toString());

        return result;

    }

    public abstract O doGet();

    public abstract O doPost(@RequestBody I input);
}
