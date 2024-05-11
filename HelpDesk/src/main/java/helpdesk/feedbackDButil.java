package helpdesk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackDButil {
	
	public static List<feedback> validate (String email){
		
		ArrayList<feedback> fdback = new ArrayList<feedback>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/helpdesk";
		String user = "root";
		String pass = "155157";
		
		
		//validate 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "select * from feedback where cus_email='"+email+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String femail = rs.getString(4);
				String msg = rs.getString(5);
				
				feedback f = new feedback(id, fname, lname,femail,msg);
				
				fdback.add(f);
				
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		 
		return fdback;
	}
	
	public static boolean insertFeedback(String fname, String lname, String email,String msg) {
		
		boolean  isSuccess = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/helpdesk";
		String user = "root";
		String pass = "155157";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into cus_feedback values(0, '"+fname+"', '"+lname+"', '"+email+"', '"+msg+"')";
			int fd = stmt.executeUpdate(sql);
			
			if(fd > 0 ) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		} 
		
		
		return isSuccess;
		
	}
	
	
	
	
	
}








