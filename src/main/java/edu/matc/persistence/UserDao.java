package edu.matc.persistence;

import edu.matc.entity.User;
import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

public class UserDao {


    private final Logger log = Logger.getLogger(this.getClass());

    /**
     * save new user
     *
     * @param user user to insert
     * @return id of the inserted user
     */

    public int addUser(User user) {
        int id = 0;
        Transaction transaction = null;
        Session session = null;
        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            id = (int) session.save(user);
            transaction.commit();
        } catch (HibernateException he) {
            if (transaction != null) {
                try {
                    transaction.rollback();
                } catch (HibernateException he2) {
                    log.error("Error rolling back save of user: " + user, he2);
                }
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return id;
    }

    /**
     * Remove user
     *
     * @param user
     */
    public void removeUser(User user) {
        Transaction transaction = null;
        Session session = null;

        try {
            log.info(user.toString());
            session = SessionFactoryProvider.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.delete(user);
            log.info(user.toString());
            transaction.commit();
        } catch (HibernateException he) {
            if (transaction != null) {
                try {
                    transaction.rollback();
                } catch (HibernateException he2) {
                    log.error("error rolling back deletion of User: " + user, he2);
                }
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    /**
     * save  user
     *
     * @param user user to update
     */

    public void update(User user) {
        Transaction transaction = null;
        Session session = null;
        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.saveOrUpdate(user);
            transaction.commit();
        } catch (HibernateException he) {
            if (transaction != null) {
                try {
                    transaction.rollback();
                } catch (HibernateException he2) {
                    log.error("Error rolling back save of user: " + user, he2);
                }
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    /**
     * Return a list of all users
     *
     * @return All users
     */
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        Session session = null;
        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            users = session.createCriteria(User.class).list();
        } catch (HibernateException he) {
            log.error("Error getting all users", he);
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return users;
    }


    /**
     * Retrieve users by lastname
     *
     * @param lastName User's last name which is the search criteria
     * @return User
     */
    public List<User> getUsersByLastName(String lastName) {
        List<User> users = new ArrayList<User>();
        Session session = null;
        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(User.class);
            criteria.add(Restrictions.eq("userLastName", lastName));
            users = criteria.list();
        } catch (HibernateException hibernateException) {
            log.error("Error getting all users with last name: " + lastName, hibernateException);
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return users;
    }

    /**
     * Get a single user for the given id
     *
     * @param id user's id
     * @return User
     */
    public User getUserById(int id) {
        User user = null;
        Session session = null;
        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            user = (User) session.get(User.class, id);
        } catch (HibernateException he) {
            log.error("Error getting user with id: " + id, he);
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return user;
    }


    /**
     * Query user by email
     *
     * @param user_email
     * @return user
     */
    public User userRecoverPasswordWithEmail(String user_email) {

        User user = null;
        Session session = null;

        try {
            session = SessionFactoryProvider.getSessionFactory().openSession();
            user = (User) session.get(User.class, user_email);
        } catch (HibernateException he) {
            log.error("Error in search by User Email");
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return user;
    }

    /**
     * Return number of records
     *
     * @return int recordCount the number of records
     */
    public int getRecordCount() {
        Session session = null;
        Transaction transaction = null;



            session = SessionFactoryProvider.getSessionFactory().openSession();
        Criteria crit = session.createCriteria(User.class);
        crit.add( Restrictions.isNotNull(user.getUserId()));
        crit.setProjection(Projections.rowCount());
        Integer count = (Integer)crit.uniqueResult();
        log.info("The count is: " + count);

        return count;


    }


}

