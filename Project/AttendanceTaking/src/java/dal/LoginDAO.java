/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Kuyet
 */
public class LoginDAO extends DBContext {

    public Student checkStudentLogin(String username, String password) {
        String sql = "SELECT * FROM Student WHERE student_username = ? AND student_password =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                Student s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7));
                return  s;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
