package edu.matc.persistence;

import edu.matc.entity.UserRoles;
import edu.matc.entity.User;
import edu.matc.entity.Status;
import edu.matc.util.LocalDateAttributeConverter;
import org.apache.log4j.Logger;

import org.junit.Before;
import org.junit.Test;

import java.time.LocalDate;
import java.util.List;
import java.util.Date;



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
    public void createNewUserInstanceTest() {
        User testUser;
        LocalDate birthDate = LocalDate.of(1922, 04, 15);

        testUser = new User("DaMayor", "password", "Harold", "Washington", "Washington", birthDate, "Chicago");

        log.info(testUser.toString());
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

        user = dao.getUserById(6);
        log.info("The user found with user ID is : " + user.toString());
        assertTrue(user.getUserLastName().equals("Page"));

    }

    @Test
    public void getUsersByLastNameTest() {
        List<User> users = dao.getUsersByLastName("Soetoro");
        assertTrue(users.size() == 3);
        log.info(users.size());
    }

    @Test
    public void addUserTest() {
        LocalDate birthDate = LocalDate.of(1922, 04, 15);
        UserRoles roleName = new UserRoles();
        roleName.setRoleName(Status.ADMIN);

        User testUser = new User("DDP", "password", "Dallas", "Page", "email", birthDate, "Atlanta");
        dao.addUser(testUser);
        user = dao.getUserById(2);
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

    @Test
    public void getUserByCriteria() {
        UserDao dao = new UserDao();
        //dao.getUserByCriteria("DDP", "userName");
        assertTrue(user.getUserName().equals("DDP"));
    }

}