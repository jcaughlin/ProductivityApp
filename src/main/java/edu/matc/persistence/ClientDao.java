package edu.matc.persistence;

import org.apache.log4j.*;
import edu.matc.entity.Client;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

public class ClientDao {

    private ArrayList<Client> clients;

    Logger logger = Logger.getLogger(this.getClass());

    public Client getClient() {

        Client client = null;

        return client;

    }

    public void addClient(Client client) {

    }

    public void createClient(ResultSet resultSet) {
        Client client = new Client();


/*
    client.setUserUserID(int userUserID) {

    }



    client.setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }



    client.setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }



    client.setUserUserName(String userUserName) {
        this.userUserName = userUserName;
    }



    client.setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }



    client.setDateUserRegistered(Date dateUserRegistered) {
        this.dateUserRegistered = dateUserRegistered;
    }



    public void setUserDateOfBirth(Date userDateOfBirth) {
        client.userDateOfBirth = userDateOfBirth;
    }


    client.setPathToUserPhoto(String pathToUserPhoto) {
        this.pathToUserPhoto = pathToUserPhoto;
    }


    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

        client.setDateUserRegistered(resultSet.getString());
    }*/

    }
}
