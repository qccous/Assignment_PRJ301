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
import model.Datetime
;
/**
 *
 * @author Kuyet
 */
public class DateDAO {
     public List<Datetime> getAllDate() throws SQLException, Exception {
        List<Datetime> list = new ArrayList<>();
        String sql = "select TOP 7 * from Date";
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Datetime dt = new Datetime(rs.getString(1), rs.getString(2));
                list.add(dt);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public static void main(String[] args) throws Exception {
        DateDAO date = new DateDAO();
        List<Datetime> list = date.getAllDate();
        System.out.println(list.get(3).getDateName());
    }
}
