package co.jp.mental.common;

public class BusinessException extends SystemException {

    public BusinessException(ResStatus status,String message, Throwable cause) {
        super(status,message, cause);
        // TODO 自動生成されたコンストラクター・スタブ
    }

    public BusinessException(ResStatus status,String message) {
        super(status,message);
        // TODO 自動生成されたコンストラクター・スタブ
    }

}
