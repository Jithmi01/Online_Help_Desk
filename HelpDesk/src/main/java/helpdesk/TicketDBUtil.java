package helpdesk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TicketDBUtil {
	
	private static boolean isSuccess;
	
	
	public static boolean validate(String username,String password){
		
		 
		
		try {
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from students where username='"+username+"' and password='"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			
			if (rs.next()) {
				isSuccess = true;
			} else {
			    isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	

	public static List<ticket> getTicket(int id) {
	    ArrayList<ticket> tick = new ArrayList<>();

	    
        // Database connection information
        String dbUrl = "jdbc:mysql://localhost:3306/helpdesk";
        String username = "root";
        String pass = "155157";

        Connection connection = null;
        Statement statement = null;

        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            connection = DriverManager.getConnection(dbUrl, username, pass);

            statement = connection.createStatement();

            String sqlQuery = "SELECT * FROM tickets where id='"+id+"'  "; 

            ResultSet resultSet = statement.executeQuery(sqlQuery);
            
            while (resultSet.next()) {
                int tid = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String sid = resultSet.getString("sid");
                String subject = resultSet.getString("subject");
                String description = resultSet.getString("description");
         
                ticket t = new ticket(tid,name,email,phone,sid,subject,description);
			    tick.add(t);
                 }        
                
            } catch (Exception e) {
                e.printStackTrace();
            } 
        
        return tick;
	}


	public static boolean insertTicket(String name,String email,String phone,String sid,String subject,String description ) {
		
		boolean isSuccess = false;
		
		try {
			//create a connection with database
		Connection con = DBConnect.getConnection();
		Statement stmt = con.createStatement();
		
		//Insert data into ticket table
		 String sql = "insert into tickets values(0,'"+name+"','"+email+"','"+phone+"','"+sid+"','"+subject+"','"+description+"')";
		
		 int rs = stmt.executeUpdate(sql);
		 
		     if(rs > 0) {
			 isSuccess = true;
		    }
		    else{
			 isSuccess = false;
		    }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		// return the value to the insertTicket servlet
		return isSuccess;
	}
	
	
	 
	 public static boolean updateTicket(String id,String name,String email,String phone,String sid,String subject,String description ) {
		 
	int tid = Integer.parseInt(id);
		 
		 boolean isSuccess= false;
		 
		 try {
			 Connection con = DBConnect.getConnection();
			 Statement stmt = con.createStatement();
			 String sql = "update tickets set name='"+name+"',email='"+email+"',phone='"+phone+"',sid='"+sid+"',subject='"+subject+"',description='"+description+"'" + "where id='"+tid+"'";
	         
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				isSuccess = true;
				
			 } 
			 else {
				 isSuccess = false;
			 }
			 
		 }catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		 
		 
		 return isSuccess;
	 }

	 
	 public static boolean deleteTicket(String id) {
		 
	int tid = Integer.parseInt(id);
		 
		 boolean isSuccess= false;
		 
		 try {
			 Connection con = DBConnect.getConnection();
			 Statement stmt = con.createStatement();
			 String sql = "DELETE FROM tickets WHERE id = '"+tid+"' ";
	         
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
				isSuccess = true;
				
			 } 
			 else {
				 isSuccess = false;
			 }
			 
		 }catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		 
		 
		 return isSuccess;
	 }
	
}
