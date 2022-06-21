/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jdk.nashorn.internal.objects.annotations.Getter;

/**
 *
 * @author Kuyet
 */

public class Student {  
    private  int studentId;
    private String studentName;
    private int classID;

    public Student() {
    }

    public Student(int studentId, String studentName, int classID) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.classID = classID;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getClassID() {
        return classID;
    }

    public void setClassID(int classID) {
        this.classID = classID;
    }
    
}
