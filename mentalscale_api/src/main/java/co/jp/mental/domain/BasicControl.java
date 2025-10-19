package co.jp.mental.domain;

import co.jp.mental.Input;
import co.jp.mental.Output;

public interface BasicControl {

    abstract public Output controller(Input input);

}
