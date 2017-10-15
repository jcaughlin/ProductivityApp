package edu.matc.persistence;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import edu.matc.entity.User;
import java.util.List;

import static org.junit.Assert.*;

public class UserDaoTest {

    private final Logger log = Logger.getLogger(this.getClass());
    UserDao dao;
    User user;
    User user2;

    @Before
    public void setup() {
        dao = new UserDao();
    }

    @Test
    public void getRecordCount() throws Exception {

        int recordCount = dao.getRecordCount();
        log.info("Record Count is: " + recordCount);
        assertEquals("Match", 101, recordCount);

    }

    @Test
    public void getAllUsers() throws Exception {
        List<User> users = dao.getAllUsers();
        assertTrue(users.size() > 0);

    }


    @Test
    public void getUserByIdTest() throws Exception {
       /* user = dao.getUser(5);
        assertTrue(user.getUserFirstName().equals("Price"));*/

        user = dao.getUserById(95);
        log.info("The user found with user ID is : " + user.toString());
        assertTrue(user.getUserLastName().equals("Petty"));

    }

    @Test
    public void getUsersByLastNameTest() throws Exception {
        List<User> users = dao.getUsersByLastName("Hawkins");
        assertTrue(users.size() == 3);
        log.info(users.size());
    }

    @Test
    public void addUserTest() throws Exception {

        User user2 = new User("Jack","Johnson", "galvestongiant","Chicago","jack@wba.org",
                "password");

        dao.addUser(user2);
        user = dao.getUserById(101);
        log.info("The user is " + user2.toString());
        assertTrue(user.getUserLastName().equals("Johnson"));
    }

    @Test
    public void update() throws Exception {
    }

    @Test
    public void removeUserTest() throws Exception {


        user = dao.getUserById(95);
        dao.removeUser(user);

    }

    @Test
    public void userRecoverPasswordWithEmailTest() throws Exception {
        user = dao.userRecoverPasswordWithEmail("risus.odio.auctor@risus.ca");
        assertTrue("Huff is the last name", user.getUserUserID() == 25);
    }

}