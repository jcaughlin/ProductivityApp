package edu.matc.entity;


import org.hibernate.annotations.GenericGenerator;
import javax.persistence.*;
import java.sql.Date;

/**
 *
 */
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(generator="increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "user_id")
    private int userUserID;

    @Column(name = "user_name")
    private String userUserName;

    @Column(name = "user_pass")
    private String userPassword;

    @Column(name = "user_first_name")
    private String userFirstName;

    @Column(name = "user_last_name")
    private String userLastName;

    @Column(name = "user_email")
    private String userEmail;

    @Column(name = "user_registered_date")
    private Date dateUserRegistered;

    @Column(name = "user_dateofbirth")
    private String userDateOfBirth;

    @Column(name = "user_photo_link")
    private String pathToUserPhoto;

    @Column(name = "user_city")
    private String userCity;

    // Empty Constructor
    public User() {

    }



    public int getUserUserID() {
        return userUserID;
    }

    public void setUserUserID(int userUserID) {
        this.userUserID = userUserID;
    }

    public String getUserFirstName() {
        return userFirstName;
    }

    public void setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    public String getUserLastName() {
        return userLastName;
    }

    public void setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    public String getUserUserName() {
        return userUserName;
    }

    public void setUserUserName(String userUserName) {
        this.userUserName = userUserName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Date getDateUserRegistered() {
        return dateUserRegistered;
    }

    public void setDateUserRegistered(Date dateUserRegistered) {
        this.dateUserRegistered = dateUserRegistered;
    }

    public String getUserDateOfBirth() {
        return userDateOfBirth;
    }

    public void setUserDateOfBirth(String userDateOfBirth) {
        this.userDateOfBirth = userDateOfBirth;
    }

    public String getPathToUserPhoto() {
        return pathToUserPhoto;
    }

    public void setPathToUserPhoto(String pathToUserPhoto) {
        this.pathToUserPhoto = pathToUserPhoto;
    }

    public String getUserCity() {
        return userCity;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }
}
