package co.jp.mental.domain.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.Output;
import co.jp.mental.domain.BasicControl;
import co.jp.mental.service.test.TestService;

@RestController
@RequestMapping("/test")
public class TestController implements BasicControl{

    @Autowired
    TestService testService;

    @Override
    public Output controller() {
        return testService.run();
    }
    

    @PostMapping
    public Output postTest() {
        return controller();
    }

}
