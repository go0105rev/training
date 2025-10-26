package co.jp.mental.common;

public class SystemException extends RuntimeException{

    private String msg;

    public SystemException(ResStatus status,String message, Throwable cause) {
        super(message, cause);
    }

    public SystemException(ResStatus status,String message) {
        super(message);
    }

    public SystemException(ResStatus status,Throwable cause) {
        super(cause);
    }

    public String getLogMessage() {
        return " -->"+msg;
    }

}
