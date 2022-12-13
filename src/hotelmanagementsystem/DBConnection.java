/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotelmanagementsystem;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
    
    static Connection connection=null;
    public static Connection getConnection(){
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
	    String url = "jdbc:mysql://localhost:3306/hotel_management?verifyServerCertificate=false&useSSL=true";
            connection=DriverManager.getConnection(url,"root","1234567");
            System.out.println("Connected");
            
        } catch (Exception e) {
        }
        
        return connection;
    }
    public static void main(String[] args) {
        getConnection();
    }
}
