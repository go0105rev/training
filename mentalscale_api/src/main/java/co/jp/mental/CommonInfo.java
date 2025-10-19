package co.jp.mental;

public class CommonInfo {

    private int cert;

    private String userId;

    public int getCert() {
        return cert;
    }

    public void setCert(int cert) {
        this.cert = cert;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "CommonInfo [cert=" + cert + ", userId=" + userId + "]";
    }


}
