package helpdesk;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
   
	
	//Creating a database Connection
	
	private static String url = "jdbc:mysql://localhost:3306/helpdesk";
	private static String user = "root";
	private static String password = "155157";
	private static Connection con; 
	
	public static Connection getConnection() {
		
	try {
		//Load the Driver
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection(url,user,password);
		
	}catch(Exception e) {
		System.out.println("DB Connection not successful");
	}
		
		
		return con;
	}
	
	
}
