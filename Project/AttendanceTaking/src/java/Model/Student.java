/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Kuyet
 */
public class Student {
    private int student_id;
    private String student_code;
    private String student_name;
    private int class_code;
    private String student_address;
    private String student_username;
    private String student_password;

    public Student() {
    }

    public Student(int student_id, String student_code, String student_name, int class_code, String student_address, String student_username, String student_password) {
        this.student_id = student_id;
        this.student_code = student_code;
        this.student_name = student_name;
        this.class_code = class_code;
        this.student_address = student_address;
        this.student_username = student_username;
        this.student_password = student_password;
    }

    
    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getStudent_code() {
        return student_code;
    }

    public void setStudent_code(String student_code) {
        this.student_code = student_code;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public int getClass_code() {
        return class_code;
    }

    public void setClass_code(int class_code) {
        this.class_code = class_code;
    }

    public String getStudent_address() {
        return student_address;
    }

    public void setStudent_address(String student_address) {
        this.student_address = student_address;
    }

    public String getStudent_username() {
        return student_username;
    }

    public void setStudent_username(String student_username) {
        this.student_username = student_username;
    }

    public String getStudent_password() {
        return student_password;
    }

    public void setStudent_password(String student_password) {
        this.student_password = student_password;
    }
    
}
