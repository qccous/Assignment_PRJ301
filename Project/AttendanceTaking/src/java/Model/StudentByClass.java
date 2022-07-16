/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Kuyet
 */
public class StudentByClass {
    int studentId;
    String studentName;
    int status;

    public StudentByClass() {
    }

    public StudentByClass(int studentId, String studentName, int status) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.status = status;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "StudentByClass{" + "studentId=" + studentId + ", studentName=" + studentName + ", status=" + status + '}';
    }
    
    
}
