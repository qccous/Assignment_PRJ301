/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.ClassModel;
import Model.StudentByClass;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kuyet
 */
public class DAOAttend extends DBConnect {
     ResultSet rs;

    public List<StudentByClass> getListClassByStudent(int classId, int slotId, String timeDate) throws SQLException {
        List<StudentByClass> ls = new ArrayList<>();
        String sql = "select  s.studentId,s.studentName,t.checkAttendStatus from Student s \n"
                + "left join checkAttend t on t.studentId = s.studentId\n"
                + "join Timetable a on a.timetableId = t.timetableId\n"
                + "where s.classId = " + classId + " and a.slotId = " + slotId + " and a.timetableDate = " + "'"+timeDate+"'";
        rs = getData(sql);
        while (rs.next()) {
            ls.add(new StudentByClass(rs.getInt(1), rs.getString(2), rs.getInt(3)));
        }
        return ls;
    }

    public boolean upDateAttendance(int status, int studentId) {
        String sql = "UPDATE checkAttend SET checkAttendStatus = " + status + " WHERE studentId = " + studentId;
        try {
            Statement state = conn.createStatement();
            int res = state.executeUpdate(sql);
            return res == 1;
        } catch (SQLException ex) {
            Logger.getLogger(DAOAttend.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
        
    }

    public static void main(String[] args) {
       
    }
}
