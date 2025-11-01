package co.jp.mental.domain.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.common.Output;
import co.jp.mental.domain.BasicControl;
import co.jp.mental.service.test.TestService;

/**
 * 疎通確認（一時ソース）。
 */
@RestController
@RequestMapping("/test")
public class TestController extends BasicControl<Output,TestInput>{

    @Autowired
    TestService testService;

    @PostMapping
    @Override
    public Output doPost(@RequestBody TestInput input) {
        return controller("test",input);
    }

    @GetMapping
    @Override
    public Output doGet() {
        return controller("test",new TestInput());
    }
}
