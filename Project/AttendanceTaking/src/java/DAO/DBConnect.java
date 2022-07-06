/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static java.lang.Class.forName;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import static java.sql.DriverManager.getConnection;
import java.sql.ResultSet;
import static java.sql.ResultSet.CONCUR_UPDATABLE;
import static java.sql.ResultSet.TYPE_SCROLL_SENSITIVE;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import static java.util.logging.Level.SEVERE;
import java.util.logging.Logger;
import static java.util.logging.Logger.getLogger;

/**
 *
 * @author Kuyet
 */
public class DBConnect {

    public Connection conn = null;

    public DBConnect(String URL, String userName, String password) {
        try {
            forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = getConnection(URL, userName, password);
            out.println("Connected successfully!");
        } catch (ClassNotFoundException ex) {
        } catch (SQLException ex) {
            getLogger(DBConnect.class.getName()).log(SEVERE, null, ex);
        }
    }

    public DBConnect() {
        this("jdbc:sqlserver://localhost:1433;databaseName=AttendanceTaking", "sa", "123456");
    }

    public ResultSet getData(String sql) {
        ResultSet rs = null;
        try {
            Statement state = conn.createStatement(TYPE_SCROLL_SENSITIVE, CONCUR_UPDATABLE);
            rs = state.executeQuery(sql);
        } catch (SQLException ex) {
            getLogger(DBConnect.class.getName()).log(SEVERE, null, ex);
        }
        return rs;
    }

    public static void main(String[] args) {
        DBConnect dbConnect = new DBConnect();
    }
}