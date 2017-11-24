package edu.matc.persistence;


import org.apache.log4j.*;
import org.junit.Before;
import org.junit.Test;
import edu.matc.entity.User;
import java.util.List;

import static org.junit.Assert.*;

public class UserDaoTest {

    private final Logger log = LogManager.getLogger(this.getClass());
    UserDao dao;
    User user;
    User user2;

    @Before
    public void setup() {
        dao = new UserDao();
    }

    @Test
   /* public void getRecordCount() throws Exception {

        log.info("Record Count is: " + getRecordCount());
        assertEquals("Match", 123, recordCount);

    }
*/

    public void getAllUsers() throws Exception {

        UserDao dao = new UserDao();
        List<User> users = dao.getAllUsers();
        assertTrue(users.size() > 0);

    }


    public void getUserByIdTest() throws Exception {
       /* user = dao.getUser(5);
        assertTrue(user.getUserFirstName().equals("Price"));*/

        user = dao.getUserById(100);
        log.info("The user found with user ID is : " + user.toString());
        assertTrue(user.getUserLastName().equals("Hogan"));

    }

    @Test
    public void getUsersByLastNameTest() throws Exception {
        List<User> users = dao.getUsersByLastName("Hawkins");
        assertTrue(users.size() == 3);
        log.info(users.size());
    }

    @Test
    public void addUserTest() throws Exception {
        
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



}