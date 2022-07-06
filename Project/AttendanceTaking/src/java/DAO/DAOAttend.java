/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.ClassModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kuyet
 */
public class DAOAttend extends DBConnect {
    ResultSet rs;

    public List<ClassModel> getListClass() throws SQLException {
        List<ClassModel> ls = new ArrayList<>();
        String sql = "select * from Class";
        rs = getData(sql);
        while (rs.next()) {
            ls.add(new ClassModel(rs.getInt(1), rs.getString(2)));
        }
        return ls;
    }
}
