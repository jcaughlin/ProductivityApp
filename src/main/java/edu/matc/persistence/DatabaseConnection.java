package edu.matc.persistence;

import sun.security.jca.GetInstance;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;
import org.apache.log4j.*;



public class DatabaseConnection {

    private static DatabaseConnection instance = new DatabaseConnection();
    protected final Logger logger = Logger.getLogger(this.getClass());

    private Properties properties;
    private Connection connection;

    private DatabaseConnection () {
        loadProperties();
    }

    private void loadProperties(){
        properties = new Properties();

        try {
            properties.load(this.getClass().getResourceAsStream("/database.properties"));
        } catch(IOException ioexception) {
            logger.error("The properties file was not found", ioexception);

        } catch(Exception exception) {
            logger.error("There is a general error when loading the properties file", exception);
        }
    }


    // get the only Database object available
    public static DatabaseConnection getInstance() {
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }

    public void connect() throws Exception {
        if (connection != null)
            return;

        try {
            Class.forName(properties.getProperty("driver"));
        } catch (ClassNotFoundException e) {
            throw new Exception("Database.connect()... Error: MySQL Driver not found");
        }

        String url = properties.getProperty("url");
        connection = DriverManager.getConnection(url, properties.getProperty("username"),  properties.getProperty("password"));
    }

    public void disconnect() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException sqlexception) {
                logger.error("Cannot close connection", sqlexception);
            }
        }

        connection = null;
    }
}
