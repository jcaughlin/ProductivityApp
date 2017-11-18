package edu.matc.entity;

import javax.persistence.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;


public class UserRoles {

    private int useroleId;

    @Column(name="role_name")
    @Enumerated
    private Status status;


    public UserRoles() {

    }


}
