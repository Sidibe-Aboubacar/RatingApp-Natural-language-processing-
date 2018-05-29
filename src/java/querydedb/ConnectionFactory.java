/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package querydedb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author macbookpro
 */
public class ConnectionFactory
{

   public static final String URL = "jdbc:mysql://localhost:8889/Customers";
   public static final String USER = "root";
   public static final String PASS = "root";
   
    //public static final String URL = "jdbc:postgresql://localhost/gtg";
    //public static final String USER = "postgres";
    //public static final String PASS = "Allah";

    /**
     * Get a connection to database
     *
     * @return Connection object
     * @throws java.lang.ClassNotFoundException
     */
    public static Connection getConnection() throws ClassNotFoundException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (SQLException ex) 
        {
            throw new RuntimeException(ex.toString());
        }
    }

}
