package edu.matc.entity;

import edu.matc.util.LocalDateAttributeConverter;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Type;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "users")
public class User implements Serializable{

    @Id
    @Column(name="user_id_pk")
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name="increment", strategy = "increment")
    private int userId;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "user_pass")
    private String userPassword;

    @Column(name = "user_first_name")
    private String userFirstName;

    @Column(name = "user_last_name")
    private String userLastName;

    @Column(name = "user_email")
    private String userEmail;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "user_registered_date")
    @Type(type="timestamp")
    private Timestamp dateUserRegistered;

    @Column(name = "user_date_birth")
    @Convert(converter = LocalDateAttributeConverter.class)
    private LocalDate userDateOfBirth;

    @Column(name = "user_city")
    private String userCity;


    @OneToMany(mappedBy = "user", orphanRemoval=true)
    @Cascade(CascadeType.ALL)
    private Set<UserRoles> userRoles = new HashSet<UserRoles>();

    // Empty Constructor
    public User() {

    }

    public User(String userName, String userPassword, String userEmail, String userCity) {
        this.userName = userName;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userCity = userCity;
    }

    public User(String userName, String userPassword, String userFirstName, String userLastName, String userEmail,
                LocalDate userDateOfBirth, String userCity) {

        this.userName = userName;
        this.userPassword = userPassword;
        this.userFirstName = userFirstName;
        this.userLastName = userLastName;
        this.userEmail = userEmail;
        this.userDateOfBirth = userDateOfBirth;
        this.userCity = userCity;


    }

    /**
     *
     * @return userId primary key of the user.
     */
    public int getUserId() {
        return userId;
    }

    /**
     *
     * @param userId set the userId primary key in the mysql database.
     */
    public void setUserId(int userId) {
        this.userId = userId;
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
    public String getUserName() {
        return userName;
    }

    /**
     *
     * @param userName Sets the User Name for the application login.
     */
    public void setUserName(String userName) {
        this.userName = userName;
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
    public Timestamp getDateUserRegistered() {
        return dateUserRegistered;
    }

    /**
     *
     * @param dateUserRegistered The timestamp of the date the User registered.
     */
    public void setDateUserRegistered(Timestamp dateUserRegistered) {
        this.dateUserRegistered= dateUserRegistered;
    }

    /**
     *
     * @return The date of birth of the User.
     */
    public LocalDate getUserDateOfBirth() {
        return userDateOfBirth;
    }

    /**
     *
     * @param userDateOfBirth Sets the User's Date of Birth.
     */
    public void setUserDateOfBirth(LocalDate userDateOfBirth) {
        this.userDateOfBirth = userDateOfBirth;
    }

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

    public Set<UserRoles> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(Set<UserRoles> userRoles) {
        this.userRoles = userRoles;
    }

    @Override
    public String toString() {
        String userString;

        userString =
                "\nUser\'s Name: " + userFirstName + " " + userLastName + "\n" +
                "User Name: " + userName + "\n" +
                "UserPassword: " + userPassword + "\n" +
                "User Birthdate: " + userDateOfBirth + "\n" +
                "Email: " + userEmail + "\n" +
                "City: " + userCity + "\n" +
                "Registered Date: " + dateUserRegistered + "\n" +
                "User Id: " + userId;

        return userString;
    }
}
