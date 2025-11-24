package co.jp.mental.repository;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "b_user_inf")
public class UserInf {

    @Id
    private String userId;

    private String userName;

    private String mail_addr;

    private String corpId;

    private String department;

    private int grade;

    private String gender;

    private Date birth;

    private int careerYrs;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMail_addr() {
        return mail_addr;
    }

    public void setMail_addr(String mail_addr) {
        this.mail_addr = mail_addr;
    }

    public String getCorpId() {
        return corpId;
    }

    public void setCorpId(String corpId) {
        this.corpId = corpId;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public int getCareerYrs() {
        return careerYrs;
    }

    public void setCareerYrs(int careerYrs) {
        this.careerYrs = careerYrs;
    }

    @Override
    public String toString() {
        return "UserInf [userId=" + userId + ", userName=" + userName + ", mail_addr=" + mail_addr + ", corpId=" + corpId + ", department="
                    + department + ", grade=" + grade + ", gender=" + gender + ", birth=" + birth + ", careerYrs=" + careerYrs + "]";
    }

}
