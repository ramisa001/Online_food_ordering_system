package model;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public Connection Connector() throws ClassNotFoundException, SQLException{
        String url="jdbc:mysql://127.0.0.1/hotfood";
            String user="root";
            String password="";
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection= (Connection) DriverManager.getConnection(url, user, password);
            return connection;
    }
    
}

