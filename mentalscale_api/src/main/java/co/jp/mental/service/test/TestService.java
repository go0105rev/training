package co.jp.mental.service.test;

import org.springframework.stereotype.Service;

import co.jp.mental.Input;
import co.jp.mental.Output;
import co.jp.mental.domain.test.TestInput;
import co.jp.mental.service.BasicService;

/**
 * 疎通確認（一時ソース）。
 */
@Service
public class TestService implements BasicService<Output, Input>{

    @Override
    public Output run(Input input) {

        TestInfo bi = new TestInfo();
        if(input instanceof TestInput in) {
            bi.setMsg(in.getMsg());
            bi.setResult(1);

        }else {
            bi.setMsg("疎通確認");
            bi.setResult(0);
        }

        Output op=new Output();
        op.setInfo(bi);

        return op;
    }
}
