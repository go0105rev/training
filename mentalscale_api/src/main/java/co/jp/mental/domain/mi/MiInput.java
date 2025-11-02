package co.jp.mental.domain.mi;

import co.jp.mental.Input;

public class MiInput implements Input {

    /**
     * メンタルスケール詳細照会有無。
     */
    private boolean isDetail;

    /**
     * 名前。
     */
    private String name;

    /**
     * 個人ID。
     */
    private String id;

    /**
     * 年齢(上限)。
     */
    private int maxAge;

    /**
     * 年齢(下限)。
     */
    private int minAge;

    /**
     * 性別。
     */
    private int gender;

    /**
     * 入力月（上限）。
     */
    private int maxMonth;

    /**
     * 入力月（下限）。
     */
    private int minMonth;

    /**
     * 所属会社ID。
     */
    private int corp;

    /**
     * 気分。
     */
    private int emosion;

    public boolean isDetail() {
        return isDetail;
    }

    public void setDetail(boolean isDetail) {
        this.isDetail = isDetail;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getMaxAge() {
        return maxAge;
    }

    public void setMaxAge(int maxAge) {
        this.maxAge = maxAge;
    }

    public int getMinAge() {
        return minAge;
    }

    public void setMinAge(int minAge) {
        this.minAge = minAge;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public int getMaxMonth() {
        return maxMonth;
    }

    public void setMaxMonth(int maxMonth) {
        this.maxMonth = maxMonth;
    }

    public int getMinMonth() {
        return minMonth;
    }

    public void setMinMonth(int minMonth) {
        this.minMonth = minMonth;
    }

    public int getCorp() {
        return corp;
    }

    public void setCorp(int corp) {
        this.corp = corp;
    }

    public int getEmosion() {
        return emosion;
    }

    public void setEmosion(int emosion) {
        this.emosion = emosion;
    }

    @Override
    public String toString() {
        return "MiInput [isDetail=" + isDetail + ", name=" + name + ", id=" + id + ", maxAge=" + maxAge + ", minAge=" + minAge + ", gender=" + gender
                + ", maxMonth=" + maxMonth + ", minMonth=" + minMonth + ", corp=" + corp + ", emosion=" + emosion + "]";
    }

}
