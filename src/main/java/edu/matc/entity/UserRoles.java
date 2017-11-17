package edu.matc.entity;

import javax.persistence.*;
import org.hibernate.annotations.GenericGenerator;


public class UserRoles {

    private int userRoleTablePrimaryIdKey;

    private User user;

    @Column(name="role_name")
    @Enumerated
    private Status status;


    public UserRoles() {

    }


}
