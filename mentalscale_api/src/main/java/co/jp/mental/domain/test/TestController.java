package co.jp.mental.domain.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import co.jp.mental.Output;
import co.jp.mental.domain.BasicControl;
import co.jp.mental.service.test.TestService;

/**
 * 疎通確認（一時ソース）。
 */
@RestController
@RequestMapping("/test")
public class TestController implements BasicControl{

    @Autowired
    TestService testService;

    @PostMapping
    public Output postTest(@RequestBody TestInput input) {
        return controller("test",input);
    }

    @GetMapping
    public Output getTest() {
        return controller("test",null);
    }
}
