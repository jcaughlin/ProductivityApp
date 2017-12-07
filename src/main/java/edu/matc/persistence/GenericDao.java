package edu.matc.persistence;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;

import java.util.List;

public class GenericDao<T> {

    private Class<T> type;
    private final Logger log = LogManager.getLogger(this.getClass());

    public GenericDao(Class<T> type) {
        this.type=type;
    }

    public int create(T object){
        Transaction transaction = null;
        Session session  = null;
        Integer id_pk = null;

        return id_pk;
    }

    public T readOne(int id) {
        Transaction transaction = null;
        Session session = null;
        T t = null;

        return t;
    }

    public List<T> readAll(){
        Transaction transaction = null;
        Session session = null;
        List<T> list = null;

        return list;
    }

    public List<T> readAllandSort(String attributeName, Order order) {
        Transaction transaction;
        Session session = null;
        List<T> sortedList = null;

        return sortedList;
    }

    public T readOneByAttribute(String attributeName, Object attributeValue) {
        Transaction transaction = null;
        Session session = null;
        T t = null;

        return t;
    }

    public void updateEntity(T object) {
        Transaction transaction = null;
        Session session = null;
    }


    public int delete(T object) {

        Transaction transaction= null;
        Session session = null;
        Integer id_pk = null;


        return id_pk;
    }


}
