package edu.matc.entity;


import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.sql.Date;
import java.util.Set;

@Entity
@Table(name = "users")
public class User implements java.io.Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
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
    @Type(type="timestamp")
    private Date dateUserRegistered;

    @Column(name = "user_dateofbirth")
    private Date userDateOfBirth;


    /*@Column(name = "user_photo_link")
    private String pathToUserPhoto;*/

    @Column(name = "user_city")
    private String userCity;

    @OneToMany(mappedBy = "users")
    @Cascade({CascadeType.SAVE_UPDATE,CascadeType.DELETE})
    private Set<UserRoles> userRoles;

    // Empty Constructor
    public User() {

    }

    /**
     * Instanitates a New User
     *
     * @param userFirstName User First Name
     * @param userLastName User Last Name
     * @param userUserName User User Name
     * @param userCity User City
     * @param userEmail User Email
     * @param userPassword User Password
     *
     */
    public User(String userFirstName, String userLastName, String userUserName, String userCity,
                String userEmail, String userPassword) {
        this.userFirstName = userFirstName;
        this.userLastName = userLastName;
        this.userUserName = userUserName;
        this.userCity = userCity;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
    }

    /**
     *
     * @return userUserID
     */
    public int getUserUserID() {
        return userUserID;
    }

    /**
     *
     * @param userUserID The user primary key id from database.
     */
    public void setUserUserID(int userUserID) {
        this.userUserID = userUserID;
    }

    /**
     *
     * @return The First Name of the User.
     */
    public String getUserFirstName() {
        return userFirstName;
    }

    /**
     *
     * @param userFirstName Sets the User's First Name.
     */
    public void setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    /**
     *
     * @return The last name of the user.
     */
    public String getUserLastName() {
        return userLastName;
    }

    /**
     *
     * @param userLastName Sets the last name of the user.
     */
    public void setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    /**
     *
     * @return the User's User Name for application login.
     */
    public String getUserUserName() {
        return userUserName;
    }

    /**
     *
     * @param userUserName Sets the User Name for the application login.
     */
    public void setUserUserName(String userUserName) {
        this.userUserName = userUserName;
    }

    /**
     *
     * @return The User's password for the application login.
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     *
     * @param userPassword Sets the User Password.
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     *
     * @return The Timestamp of the Date the User Registered.
     */
    public Date getDateUserRegistered() {
        return dateUserRegistered;
    }

    /**
     *
     * @param dateUserRegistered The timestamp of the date the User registered.
     */
    public void setDateUserRegistered(Date dateUserRegistered) {
        this.dateUserRegistered = dateUserRegistered;
    }

    /**
     *
     * @return The date of birth of the User.
     */
    public Date getUserDateOfBirth() {
        return userDateOfBirth;
    }

    /**
     *
     * @param userDateOfBirth Sets the User's Date of Birth.
     */
    public void setUserDateOfBirth(Date userDateOfBirth) {
        this.userDateOfBirth = userDateOfBirth;
    }

    /*public String getPathToUserPhoto() {
        return pathToUserPhoto;
    }

    public void setPathToUserPhoto(String pathToUserPhoto) {
        this.pathToUserPhoto = pathToUserPhoto;
    } */

    /**
     *
     * @return userCity
     */
    public String getUserCity() {
        return userCity;
    }

    /**
     *
     * @param userCity Sets the String value of the User's City.
     */
    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    /**
     *
     * @return userEmail
     */
    public String getUserEmail() {
        return userEmail;
    }

    /**
     *
     * @param userEmail Sets the value of the user's email.
     */
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    /**
     *
     * @return The Set of the User's security roles.
     */
    public Set<UserRoles> getUserRoles() {
        return userRoles;
    }

    /**
     *
     * @param userRoles The roles of the User.
     */
    public void setUserRoles(Set<UserRoles> userRoles) {
        this.userRoles = userRoles;
    }

    @Override
    public String toString() {
        String userString;

        userString = "\nUserID: " + userUserID + "\n" +
                "User\'s Name: " + userFirstName + " " + userLastName + "\n" +
                "UserName: " + userUserName + "\n" +
                "UserPassword: " + userPassword + "\n" +
                "User Role: " + userRoles + "\n" +
                "User Birthdate: " + userDateOfBirth + "\n" +
                "Email: " + userEmail + "\n" +
                "City: " + userCity + "\n" +
                "Registered Date: " + dateUserRegistered;

        return userString;
    }
}
