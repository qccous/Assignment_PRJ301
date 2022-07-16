/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.ClassEntity;
import Model.Date;
import Model.Schedule;
import Model.Slot;
import Model.Week;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Kuyet
 */
public class DAOSchedule extends DBConnect {

    ResultSet rs;

    public List<Schedule> getSchedule(int studentId, int weekId) throws SQLException {
        String sql = "select  className,t.subjectId,slotId,ca.checkAttendStatus,day,t.week_id\n"
                + "from Student s join Class c on c.classId=s.classId\n"
                + "join Timetable t on t.classId=c.classId\n"
                + "join checkAttend ca on ca.timetableId = t.timetableId and ca.studentId=s.studentId\n"
                + "where s.studentId=" + studentId + " and t.week_id=" + weekId;
        rs = getData(sql);
        List<Schedule> ls = new ArrayList<>();
        while (rs.next()) {
            Schedule schedule = new Schedule();
            schedule.setClassName(rs.getString(1));
            schedule.setSubject(rs.getString(2));
            schedule.setSlot(rs.getInt(3));
            schedule.setAttend(rs.getInt(4));
            schedule.setDay(rs.getString(5));
            ls.add(schedule);
        }
        return ls;
    }

    public List<Slot> getSlotTime() throws SQLException {
        List<Slot> ls = new ArrayList<>();
        String sql = "select * from Slot";
        rs = getData(sql);
        while (rs.next()) {
            ls.add(new Slot(rs.getInt(1), rs.getString(2)));
        }
        return ls;
    }

    public List<Date> getDateTime() throws SQLException {
        List<Date> ls = new ArrayList<>();
        String sql = "select * from Date";
        rs = getData(sql);
        while (rs.next()) {
            ls.add(new Date(rs.getInt(1), rs.getString(2)));
        }
        return ls;
    }
    
      public List<Week> getWeekTime() throws SQLException {
        List<Week> ls = new ArrayList<>();
        String sql = "select * from Week";
        rs = getData(sql);
        while (rs.next()) {
            ls.add(new Week(rs.getInt(1), rs.getString(2)));
        }
        return ls;
    }

    public List<String> getDateTime(int id) throws SQLException {
        List<String> ls = new ArrayList<>();
        String sql = "select week_id,FORMAT(DATEADD(day,1,CAST(dateTime as date)),'dd/MM/yyyy') from Date where week_id=" + id;
        rs = getData(sql);
        while (rs.next()) {
            ls.add(rs.getString(2));
        }
        return ls;
    }
    public List<ClassEntity> getList() throws SQLException {
        List<ClassEntity> ls = new ArrayList<>();
        String sql = "select * from Class";
        rs = getData(sql);
        while (rs.next()) {
            ls.add(new ClassEntity(rs.getInt(1), rs.getString(2)));
        }
        return ls;
    }
   
}
