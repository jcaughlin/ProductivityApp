package edu.matc.entity;

import javax.persistence.*;
import java.util.Set;
import java.util.HashSet;

@Entity
@Table(name="task")
public class Task implements java.io.Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="task_id")
    private int task_id;

    @Column(name="task_name")
    private String taskName;

    public int getTask_id() {
        return task_id;
    }

    public void setTask_id(int task_id) {
        this.task_id = task_id;
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

        taskString = "TaskID: " + task_id + "TaskName: " + taskName;

        return taskString;
    }
}
