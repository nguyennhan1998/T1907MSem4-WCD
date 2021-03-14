package com.example.da;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConection {
    private static Connection connection;
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if(connection==null){
//1.lowading driver
            Class.forName("com.mysql.cj.jdbc.Driver");
//2. connect
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FptAptechEdu","root","");
        }
        return connection;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        if(getConnection()!=null){
            System.out.println("oke");
        }
    }
}