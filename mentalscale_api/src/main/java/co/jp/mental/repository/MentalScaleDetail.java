package co.jp.mental.repository;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "b_mental_scale_detail")
public class MentalScaleDetail {

    @Id
    private String mscaleNum;

    private String userId;

    private LocalDateTime sDate;

    private int m001;

    private int m002;

    private int m003;

    private int m004;

    private int m005;

    private int m006;

    private int m007;

    private int m008;

    private int m009;

    private int m010;

    private int m011;

    private int m012;

    private int m013;

    private int m014;

    private int m015;

    private int m016;

    private int m017;

    private int m018;

    private int m019;

    private int m020;

    private String other;

    public String getMscaleNum() {
        return mscaleNum;
    }

    public void setMscaleNum(String mscaleNum) {
        this.mscaleNum = mscaleNum;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public LocalDateTime getsDate() {
        return sDate;
    }

    public void setsDate(LocalDateTime sDate) {
        this.sDate = sDate;
    }

    public int getM001() {
        return m001;
    }

    public void setM001(int m001) {
        this.m001 = m001;
    }

    public int getM002() {
        return m002;
    }

    public void setM002(int m002) {
        this.m002 = m002;
    }

    public int getM003() {
        return m003;
    }

    public void setM003(int m003) {
        this.m003 = m003;
    }

    public int getM004() {
        return m004;
    }

    public void setM004(int m004) {
        this.m004 = m004;
    }

    public int getM005() {
        return m005;
    }

    public void setM005(int m005) {
        this.m005 = m005;
    }

    public int getM006() {
        return m006;
    }

    public void setM006(int m006) {
        this.m006 = m006;
    }

    public int getM007() {
        return m007;
    }

    public void setM007(int m007) {
        this.m007 = m007;
    }

    public int getM008() {
        return m008;
    }

    public void setM008(int m008) {
        this.m008 = m008;
    }

    public int getM009() {
        return m009;
    }

    public void setM009(int m009) {
        this.m009 = m009;
    }

    public int getM010() {
        return m010;
    }

    public void setM010(int m010) {
        this.m010 = m010;
    }

    public int getM011() {
        return m011;
    }

    public void setM011(int m011) {
        this.m011 = m011;
    }

    public int getM012() {
        return m012;
    }

    public void setM012(int m012) {
        this.m012 = m012;
    }

    public int getM013() {
        return m013;
    }

    public void setM013(int m013) {
        this.m013 = m013;
    }

    public int getM014() {
        return m014;
    }

    public void setM014(int m014) {
        this.m014 = m014;
    }

    public int getM015() {
        return m015;
    }

    public void setM015(int m015) {
        this.m015 = m015;
    }

    public int getM016() {
        return m016;
    }

    public void setM016(int m016) {
        this.m016 = m016;
    }

    public int getM017() {
        return m017;
    }

    public void setM017(int m017) {
        this.m017 = m017;
    }

    public int getM018() {
        return m018;
    }

    public void setM018(int m018) {
        this.m018 = m018;
    }

    public int getM019() {
        return m019;
    }

    public void setM019(int m019) {
        this.m019 = m019;
    }

    public int getM020() {
        return m020;
    }

    public void setM020(int m020) {
        this.m020 = m020;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    @Override
    public String toString() {
        return "MentalScaleDetail [mscaleNum=" + mscaleNum + ", userId=" + userId + ", sDate=" + sDate + ", m001=" + m001 + ", m002=" + m002
                    + ", m003=" + m003 + ", m004=" + m004 + ", m005=" + m005 + ", m006=" + m006 + ", m007=" + m007 + ", m008=" + m008 + ", m009="
                    + m009 + ", m010=" + m010 + ", m011=" + m011 + ", m012=" + m012 + ", m013=" + m013 + ", m014=" + m014 + ", m015=" + m015
                    + ", m016=" + m016 + ", m017=" + m017 + ", m018=" + m018 + ", m019=" + m019 + ", m020=" + m020 + ", other=" + other + "]";
    }

}
