package co.jp.mental.domain.mr;

import co.jp.mental.Input;

public class MrInput implements Input {

    private String userId;
    
    private String ques;

    private Scale scaleEntity;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getQues() {
        return ques;
    }

    public void setQues(String ques) {
        this.ques = ques;
    }

    public Scale getScaleEntity() {
        return scaleEntity;
    }

    public void setScaleEntity(Scale scaleEntity) {
        this.scaleEntity = scaleEntity;
    }

    @Override
    public String toString() {
        return "MrInput [userId=" + userId + ", ques=" + ques + ", scaleEntity=" + scaleEntity + "]";
    }

    public class Scale {
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

        public int getScale01() {
            return scale01;
        }

        public int getScale02() {
            return scale02;
        }

        public int getScale03() {
            return scale03;
        }

        public int getScale04() {
            return scale04;
        }

        public int getScale05() {
            return scale05;
        }

        public int getScale06() {
            return scale06;
        }

        public int getScale07() {
            return scale07;
        }

        public int getScale08() {
            return scale08;
        }

        public int getScale09() {
            return scale09;
        }

        public int getScale10() {
            return scale10;
        }

        public int getScale11() {
            return scale11;
        }

        public int getScale12() {
            return scale12;
        }

        public int getScale13() {
            return scale13;
        }

        public int getScale14() {
            return scale14;
        }

        public int getScale15() {
            return scale15;
        }

        public int getScale16() {
            return scale16;
        }

        public int getScale17() {
            return scale17;
        }

        public int getScale18() {
            return scale18;
        }

        public int getScale19() {
            return scale19;
        }

        public int getScale20() {
            return scale20;
        }

        public String getOther() {
            return other;
        }

        @Override
        public String toString() {
            return "Scale [scale01=" + scale01 + ", scale02=" + scale02 + ", scale03=" + scale03 + ", scale04=" + scale04 + ", scale05=" + scale05
                    + ", scale06=" + scale06 + ", scale07=" + scale07 + ", scale08=" + scale08 + ", scale09=" + scale09 + ", scale10=" + scale10
                    + ", scale11=" + scale11 + ", scale12=" + scale12 + ", scale13=" + scale13 + ", scale14=" + scale14 + ", scale15=" + scale15
                    + ", scale16=" + scale16 + ", scale17=" + scale17 + ", scale18=" + scale18 + ", scale19=" + scale19 + ", scale20=" + scale20
                    + "]";
        }

    }

}
