package co.jp.mental;

public class CommonInfo {

    private String actionId;

    private String mehtod;

    private String userId;

    public String getActionId() {
        return actionId;
    }

    public void setActionId(String actionId) {
        this.actionId = actionId;
    }

    public String getMehtod() {
        return mehtod;
    }

    public void setMehtod(String mehtod) {
        this.mehtod = mehtod;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "CommonInfo [actionId=" + actionId + ", mehtod=" + mehtod + ", userId=" + userId + "]";
    }

}
