package co.jp.mental.common;

import java.util.Arrays;

public class SystemException extends RuntimeException {

    private String msg;

    public SystemException(ResStatus status, String message, Throwable cause) {
        super(message, cause);
        editLog(status, message);
    }

    public SystemException(ResStatus status, String message) {
        super(message);
        editLog(status, message);
    }

    public SystemException(ResStatus status, Throwable cause) {
        super(cause);
        editLog(status);
    }

    private void editLog(ResStatus status, String... msgs) {

        StringBuilder a = new StringBuilder();
        Arrays.stream(msgs).forEach(b -> a.append(b));
        this.msg = status + " " + a.toString();

    }

    public String getLogMessage() {
        return " -->" + msg;
    }

}
