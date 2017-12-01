package edu.matc.entity;

import edu.matc.util.LocalDateAttributeConverter;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.Set;
import java.util.HashSet;

@Entity
@Table(name = "users")
public class User {

    @Id
    @Column(name="user_id_pk")
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name="increment", strategy = "increment")
    private int userId;

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
    private Timestamp dateUserRegistered;

    @Column(name = "user_date_birth")
    @Convert(converter = LocalDateAttributeConverter.class)
    private LocalDate userDateOfBirth;

    @Column(name = "user_city")
    private String userCity;

    /**
    @OneToMany(mappedBy = "user")
    @Cascade({CascadeType.SAVE_UPDATE,CascadeType.DELETE})
    private Set<UserRoles> roles = new HashSet<UserRoles>();
*/
    // Empty Constructor
    public User() {

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

    @Override
    public String toString() {
        String userString;

        userString =
                "User\'s Name: " + userFirstName + " " + userLastName + "\n" +
                "UserName: " + userUserName + "\n" +
                "UserPassword: " + userPassword + "\n" +
                "User Birthdate: " + userDateOfBirth + "\n" +
                "Email: " + userEmail + "\n" +
                "City: " + userCity + "\n" +
                "Registered Date: " + dateUserRegistered;

        return userString;
    }

}
