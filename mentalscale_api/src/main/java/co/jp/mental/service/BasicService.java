package co.jp.mental.service;

import co.jp.mental.Input;

public interface BasicService<O,I> {

    public O run(Input I);

}
