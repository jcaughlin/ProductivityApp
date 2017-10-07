package edu.matc.entity;

import java.sql.Date;

public class Client {

    private int userUserID;
    private String userFirstName;
    private String userLastName;
    private String userUserName;
    private String userPassword;
    private Date dateUserRegistered;
    private Date userDateOfBirth;
    private String pathToUserPhoto;
    private String userCity;

    // Empty Constructor
    public Client() {

    }

    // Client Constructor
    public Client(int userUserID, String userFirstName, String userLastName, String userUserName, String userPassword, Date dateUserRegistered, Date userDateOfBirth, String pathToUserPhoto, String userCity) {
        this.userUserID = userUserID;
        this.userFirstName = userFirstName;
        this.userLastName = userLastName;
        this.userUserName = userUserName;
        this.userPassword = userPassword;
        this.dateUserRegistered = dateUserRegistered;
        this.userDateOfBirth = userDateOfBirth;
        this.pathToUserPhoto = pathToUserPhoto;
        this.userCity = userCity;
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

    public Date getUserDateOfBirth() {
        return userDateOfBirth;
    }

    public void setUserDateOfBirth(Date userDateOfBirth) {
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
}
