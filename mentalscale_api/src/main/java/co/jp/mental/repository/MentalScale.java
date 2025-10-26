package co.jp.mental.repository;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**メンタルスケール。*/
@Entity
@Table(name = "b_mental_scale")
public class MentalScale {

    /** 利用者ID。 */
    private String userId;

    /** スケールID。 */
    @Id
    private String mscaleNum;

    /** 入力日付。 */
    private Date sDate;

    /** 平均得点。 */
    private double avgScore;

    /** 最大得点。 */
    private int maxScore;

    /** 最小得点。 */
    private int minScore;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getMscaleNum() {
        return mscaleNum;
    }

    public void setMscaleNum(String mscaleNum) {
        this.mscaleNum = mscaleNum;
    }

    public Date getsDate() {
        return sDate;
    }

    public void setsDate(Date sDate) {
        this.sDate = sDate;
    }

    public double getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(double avgScore) {
        this.avgScore = avgScore;
    }

    public int getMaxScore() {
        return maxScore;
    }

    public void setMaxScore(int maxScore) {
        this.maxScore = maxScore;
    }

    public int getMinScore() {
        return minScore;
    }

    public void setMinScore(int minScore) {
        this.minScore = minScore;
    }

}
