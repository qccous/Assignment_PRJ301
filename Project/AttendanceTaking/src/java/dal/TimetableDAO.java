/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Timetable;

/**
 *
 * @author Kuyet
 */
public class TimetableDAO {
    public List<Timetable> getAllTimetable() throws SQLException, Exception{
            List<Timetable> list = new ArrayList<>();
            String sql= "select * from Timetable order by timetableDate";
            //lenh sql
            try{
        Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
         while(rs.next()){
            Timetable t = new Timetable(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getBoolean(6));
            list.add(t);
         }
    } catch(SQLException e){
                System.out.println(e);
            }
        return list;
    }
    public List<Date> getAllDate() throws SQLException, Exception{
            List<Date> list = new ArrayList<>();
            String sql= "select  DISTINCT TOP 7 timetableDate from Timetable order by timetableDate asc";
            //lenh sql
            try{
        Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
         while(rs.next()){
             Date d = rs.getDate(1);
             list.add(d);
         }
    } catch(SQLException e){
                System.out.println(e);
            }
        return list;
    }
public static void main(String[] args) throws Exception {
        TimetableDAO tb = new TimetableDAO();
        List<Timetable> list = tb.getAllTimetable();
        System.out.println(list.get(3).getTimetableDate());
    }
}
