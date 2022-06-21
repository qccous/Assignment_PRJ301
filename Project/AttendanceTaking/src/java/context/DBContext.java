/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {
     public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber
                + ";databaseName=" + dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }

    
    private final String serverName = "DESKTOP-C8KGSPL\\SQLEXPRESS";
    private final String dbName = "AttendanceTaking";
    private final String portNumber = "1433";
    private final String userID = "sa";
    private final String password = "123456";

    public static void main(String[] args) {
        DBContext dBContext = new DBContext();
        try {
            System.out.println("Thanh Cong");
            System.out.println(dBContext.getConnection());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}


