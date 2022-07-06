/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Account;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Kuyet
 */
public class DAOAccount extends DBConnect {

    ResultSet rs;

    public Account login(String user, String pass) {
        String sql = "SELECT studentId,studentName from Student where username='" + user + "' and password='" + pass + "'";
        System.out.println(sql);
        rs = getData(sql);
        Account ac = null;
        try {
            while (rs.next()) {
                ac = new Account(rs.getInt(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            return null;
        }
        return ac;
    }
}
