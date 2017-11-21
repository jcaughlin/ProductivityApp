package edu.matc.entity;

import javax.persistence.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;


    @Entity
    @Table(name="user_roles")
public class UserRoles {

    @Id
    @Column(name="user_role_id_pk")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int roleIdPk;

    @Column(name="role_name")
    @Enumerated(EnumType.STRING)
    private Status roleName;

    @ManyToOne
    @JoinColumn(name="user_name", referencedColumnName = "user_name", nullable = false)
    private User user;

    public UserRoles() {

    }

    /**
     * Set the User user
     *
     * @param user the User Object.
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * Get the value of the User Object.
     *
     * @return
     */
    public User getUser() {
        return user;
    }
    /**
     * Sets the Users role defined by Enum Status.
     * @param roleName
     */
    public void setRoleName(Status roleName) {
        this.roleName = roleName;
    }

    /**
     *
     * @return roleName the RoleName of the user.
     */
    public Status getRoleName() {
        return roleName;
    }
}
