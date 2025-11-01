package co.jp.mental.repository;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="b_mental_scale_detail")
public class MentalScaleDetail {

    @Id
    private String mscaleNum;

    private LocalDateTime sDate;

    private int scale01;

    private int scale02;

    private int scale03;

    private int scale04;

    private int scale05;

    private int scale06;

    private int scale07;

    private int scale08;

    private int scale09;

    private int scale10;

    private int scale11;

    private int scale12;

    private int scale13;

    private int scale14;

    private int scale15;

    private int scale16;

    private int scale17;

    private int scale18;

    private int scale19;

    private int scale20;

    private String other;



    public String getMscaleNum() {
        return mscaleNum;
    }

    public void setMscaleNum(String mscaleNum) {
        this.mscaleNum = mscaleNum;
    }

    public LocalDateTime getsDate() {
        return sDate;
    }

    public void setsDate(LocalDateTime sDate) {
        this.sDate = sDate;
    }

    public int getScale01() {
        return scale01;
    }

    public void setScale01(int scale01) {
        this.scale01 = scale01;
    }

    public int getScale02() {
        return scale02;
    }

    public void setScale02(int scale02) {
        this.scale02 = scale02;
    }

    public int getScale03() {
        return scale03;
    }

    public void setScale03(int scale03) {
        this.scale03 = scale03;
    }

    public int getScale04() {
        return scale04;
    }

    public void setScale04(int scale04) {
        this.scale04 = scale04;
    }

    public int getScale05() {
        return scale05;
    }

    public void setScale05(int scale05) {
        this.scale05 = scale05;
    }

    public int getScale06() {
        return scale06;
    }

    public void setScale06(int scale06) {
        this.scale06 = scale06;
    }

    public int getScale07() {
        return scale07;
    }

    public void setScale07(int scale07) {
        this.scale07 = scale07;
    }

    public int getScale08() {
        return scale08;
    }

    public void setScale08(int scale08) {
        this.scale08 = scale08;
    }

    public int getScale09() {
        return scale09;
    }

    public void setScale09(int scale09) {
        this.scale09 = scale09;
    }

    public int getScale10() {
        return scale10;
    }

    public void setScale10(int scale10) {
        this.scale10 = scale10;
    }

    public int getScale11() {
        return scale11;
    }

    public void setScale11(int scale11) {
        this.scale11 = scale11;
    }

    public int getScale12() {
        return scale12;
    }

    public void setScale12(int scale12) {
        this.scale12 = scale12;
    }

    public int getScale13() {
        return scale13;
    }

    public void setScale13(int scale13) {
        this.scale13 = scale13;
    }

    public int getScale14() {
        return scale14;
    }

    public void setScale14(int scale14) {
        this.scale14 = scale14;
    }

    public int getScale15() {
        return scale15;
    }

    public void setScale15(int scale15) {
        this.scale15 = scale15;
    }

    public int getScale16() {
        return scale16;
    }

    public void setScale16(int scale16) {
        this.scale16 = scale16;
    }

    public int getScale17() {
        return scale17;
    }

    public void setScale17(int scale17) {
        this.scale17 = scale17;
    }

    public int getScale18() {
        return scale18;
    }

    public void setScale18(int scale18) {
        this.scale18 = scale18;
    }

    public int getScale19() {
        return scale19;
    }

    public void setScale19(int scale19) {
        this.scale19 = scale19;
    }

    public int getScale20() {
        return scale20;
    }

    public void setScale20(int scale20) {
        this.scale20 = scale20;
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other;
    }

    @Override
    public String toString() {
        return "MentalScaleDetail [mscaleNum=" + mscaleNum + ", sDate=" + sDate + ", scale01=" + scale01 + ", scale02=" + scale02 + ", scale03="
                + scale03 + ", scale04=" + scale04 + ", scale05=" + scale05 + ", scale06=" + scale06 + ", scale07=" + scale07 + ", scale08=" + scale08
                + ", scale09=" + scale09 + ", scale10=" + scale10 + ", scale11=" + scale11 + ", scale12=" + scale12 + ", scale13=" + scale13
                + ", scale14=" + scale14 + ", scale15=" + scale15 + ", scale16=" + scale16 + ", scale17=" + scale17 + ", scale18=" + scale18
                + ", scale19=" + scale19 + ", scale20=" + scale20 + ", other=" + other + "]";
    }

}
