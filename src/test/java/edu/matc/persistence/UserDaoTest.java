package edu.matc.persistence;

import edu.matc.entity.UserRoles;
import edu.matc.entity.User;
import edu.matc.entity.Status;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.junit.Before;
import org.junit.Test;
import java.util.List;
import java.time.LocalDate;
import edu.matc.util.LocalDateAttributeConverter;

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
    public void createNewUserInstanceTest() {
        User testUser;
        LocalDate birthDate = LocalDate.of(1922,04,15);

        testUser = new User("DaMayor","password","Harold","Washington","Washington",birthDate,"Chicago");

        log.info(testUser.toString());
    }

    @Test
   public void getRecordCountTest() {
        int count;
        count = dao.getRecordCount();
        log.info("Record Count is: " + dao.getRecordCount());
        assertEquals("Match", 1, count);

    }

    @Test
    public void getAllUsersTest() {

        UserDao dao = new UserDao();
        List<User> users = dao.getAllUsers();
        assertTrue(users.size() > 0);

    }

    @Test
    public void getUserByIdTest() {
       /* user = dao.getUser(5);
        assertTrue(user.getUserFirstName().equals("Price"));*/

        user = dao.getUserById(2);
        log.info("The user found with user ID is : " + user.toString());
        assertTrue(user.getUserLastName().equals("Washington"));

    }

    @Test
    public void getUsersByLastNameTest() {
        List<User> users = dao.getUsersByLastName("Soetoro");
        assertTrue(users.size() == 3);
        log.info(users.size());
    }

    @Test
    public void addUserTest() {
        User testUser;
        LocalDate birthDate = LocalDate.of(1922,04,15);
        UserRoles roleName = new UserRoles();
        roleName.setRoleName(Status.ADMIN);

        testUser = new User("DaMayor","password","Harold","Washington","Washington",birthDate,"Chicago");
        dao.addUser(testUser);
        user = dao.getUserById(2);
        log.info("The user is " + testUser.toString());
        assertTrue(user.getUserLastName().equals("Johnson"));
    }

    @Test
    public void update() {
    }

    @Test
    public void removeUserTest() {


        user = dao.getUserById(2);
        dao.removeUser(user);

    }



}