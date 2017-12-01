package edu.matc.entity;

import javax.persistence.*;
import java.util.Set;
import java.util.HashSet;

@Entity
@Table(name="task")
public class Task implements java.io.Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="task_id_pk")
    private int taskID;

    @Column(name="task_name")
    private String taskName;

    public int getTaskID(){ return taskID; }

    public void setTaskID(int task_id) {
        this.taskID = taskID;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public Task() {

    }

    @Override
    public String toString() {

        String taskString;

        taskString = "TaskID: " + taskID + "TaskName: " + taskName;

        return taskString;
    }
}
