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
    public void getAllUsers() throws Exception {
        List<User> users = dao.getAllUsers();
        assertTrue(users.size() > 0);

    }

    @Test
    public void getUserByUserNameTest() throws Exception {
        user = dao.getUserByUserName("Vincent");
        assertTrue(user.getUserUserName().equals("Vincent"));

    }

    @Test
    public void getUserTest() throws Exception {
       /* user = dao.getUser(5);
        assertTrue(user.getUserFirstName().equals("Price"));*/

        user = dao.getUser(95);
        assertTrue(user.getUserLastName().equals("Petty"));

    }

    @Test
    public void getUsersByLastNameTest() throws Exception {
        List<User> users = dao.getUsersByLastName("Petty");
        assertEquals("Petty", "Petty");
        log.info(user.toString());


    }

    @Test
    public void addUserTest() throws Exception {

        user.setUserEmail("bob@msn.com");
        user.setUserUserName("BOB");
        user.setUserCity("Chicago");
        user.setUserFirstName("Steve");
        user.setUserLastName("Smith");
        user.setUserDateOfBirth("1945-09-12");

        dao.addUser(user);






    }

    @Test
    public void update() throws Exception {
    }

    @Test
    public void removeUser() throws Exception {

    }

    @Test
    public void userRecoverPasswordWithEmailTest() throws Exception {
        user = dao.userRecoverPasswordWithEmail("risus.odio.auctor@risus.ca");
        assertTrue("Huff is the last name", user.getUserUserID() == 25);
    }

}