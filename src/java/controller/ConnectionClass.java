/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.sql.*;
/**
 *
 * @author MY ACER
 */
public class ConnectionClass {
    
    public Connection con=null;
    
    public String conClass()
    {
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chatapp","root","");
    }
    catch(ClassNotFoundException e)
    {
    return("driver error and "+e.getMessage());
    }
    catch(SQLException e)
    {
    return("sql error and "+e.getMessage());
    }
    
    return("connection open");
    }
    
}
