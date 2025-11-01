package co.jp.mental.repository;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "m_mental")
public class Mental {

    @Id
    private String quesKey;

    private String quesDetail;

    public String getQuesKey() {
        return quesKey;
    }

    public void setQuesKey(String quesKey) {
        this.quesKey = quesKey;
    }

    public String getQuesDetail() {
        return quesDetail;
    }

    public void setQuesDetail(String quesDetail) {
        this.quesDetail = quesDetail;
    }

    @Override
    public String toString() {
        return "Mental [quesKey=" + quesKey + ", quesDetail=" + quesDetail + "]";
    }

}
