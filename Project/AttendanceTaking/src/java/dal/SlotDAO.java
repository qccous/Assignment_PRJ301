/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Slot;
import model.Timetable;

/**
 *
 * @author Kuyet
 */
public class SlotDAO {

    public List<Slot> getAllSlot() throws SQLException, Exception {
        List<Slot> list = new ArrayList<>();
        String sql = "select * from Slot";
        //lenh sql
        try {
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Slot s = new Slot(rs.getInt(1), rs.getString(2));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public static void main(String[] args) throws Exception {
        SlotDAO slot = new SlotDAO();
        List<Slot> list = slot.getAllSlot();
        System.out.println(list.get(1).getFromTime());
    }
}
