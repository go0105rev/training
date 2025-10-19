package co.jp.mental.service.test;

import org.springframework.stereotype.Service;

import co.jp.mental.Input;
import co.jp.mental.Output;
import co.jp.mental.domain.test.TestInput;

/**
 * 疎通確認（一時ソース）。
 */
@Service
public class TestService {

    public Output run(Input input) {

        TestInfo bi = new TestInfo();
        if(input instanceof TestInput in) {
            bi.setMsg(in.getMsg());
            bi.setResult(0);

        }else {
            bi.setMsg("疎通確認");
            bi.setResult(0);
        }

        Output op=new Output();
        op.setInfo(bi);

        return op;
    }
}
