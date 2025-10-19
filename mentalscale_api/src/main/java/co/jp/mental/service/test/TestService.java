package co.jp.mental.service.test;

import org.springframework.stereotype.Service;

import co.jp.mental.Output;

/**
 * 疎通確認（一時ソース）。
 */
@Service
public class TestService {

    public Output run() {

        TestInfo bi = new TestInfo();
        bi.setMsg("疎通確認");
        bi.setResult(0);

        Output op=new Output();
        op.setInfo(bi);

        return op;
    }
}
