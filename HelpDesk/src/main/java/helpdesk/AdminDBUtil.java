/*concept of abstraction is used-abstracts the operation of adding a user to the database by addUser() method.
updateAccount method abstracts the operation of updating an admin's account in the database*/


//concept of encapsulation used

package helpdesk;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	//create instance variables purpose to get one database connection for whole system and can be used all of the methods.
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static ResultSet result=null;
	
	// Validation of admin credentials
	public static boolean validate(String username,String password) {
		
		try {
			Connection con=DBConnection.getConnection();
			Statement stment=con.createStatement();
			String sql="select * from admin where UserName='"+username+"'and Password='"+password+"'";
			ResultSet result=stment.executeQuery(sql);
			
			if(result.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	// Retrieve admin information based on username and password
	//static used for because I can access by using just the class name
	
	//list is used for the purpose to get details from DB and returns them as a arraylist object
	public static List<Admin> getAdmin(String username,String password){
		ArrayList<Admin> Admin=new ArrayList<>();
		
		try {
			Connection con=DBConnection.getConnection();
			Statement stment=con.createStatement();
			String sql="select * from admin where UserName='"+username+"'and Password='"+password+"'";
			ResultSet result=stment.executeQuery(sql);
			
			//check whether inserted username and password is in the database
			while(result.next()) {
				int AdminID=result.getInt(1);
				String Name=result.getString(2);
				String Email=result.getString(3);
				String WorkPhone=result.getString(4);
				String UserName=result.getString(5);
				String Password=result.getString(6);
				
				Admin a=new Admin(AdminID,Name,Email,WorkPhone,UserName,Password);
				Admin.add(a);
			}
		}catch(Exception e) {
			e.printStackTrace();//prints what is the error
		}
		
		return Admin;
	}
	
	// Add a user to the database
	
	public static boolean addUser(String name,String role,String email,String nic,String username) {
		boolean isSuccess=false;
	
	//Insert operation
		
		try{
			Connection con=DBConnection.getConnection();
			Statement stment=con.createStatement();
			String sql="insert into userandstaff values('"+name+"','"+role+"','"+email+"','"+nic+"','"+username+"')";
			int result=stment.executeUpdate(sql);
			
			if(result>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	
	}
	
	// Update admin account information
	
	public static boolean updateAccount(String adminid,String name,String email,String workphone) {
	boolean isSuccess = false; 
	
	//Update operation
	
	try {
		
		Connection con=DBConnection.getConnection();
		Statement stment=con.createStatement();
		String sql="update admin set name='"+name+"',email='"+email+"',workPhone='"+workphone+"'"+"where AdminID='"+adminid+"'";
		int result=stment.executeUpdate(sql);
		
		if(result>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
				
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return isSuccess;
	}
	
	//(Read operation in CRUD)Get admin details based on adminid
	
	public static List<Admin> getAdminDetails(String adminid){
		int convertedID=Integer.parseInt(adminid);
		ArrayList<Admin> Admin=new ArrayList<>();
		
		try {
			Connection con=DBConnection.getConnection();
			Statement stment=con.createStatement();
			String sql="select * from admin where AdminID='"+convertedID+"'";
			result=stment.executeQuery(sql);
			
			while(result.next()) {
				int AdminID=result.getInt(1);
				String Name=result.getString(2);
				String Email=result.getString(3);
				String WorkPhone=result.getString(4);
				String UserName=result.getString(5);
				String Password=result.getString(6);
				
				Admin a=new Admin(AdminID,Name,Email,WorkPhone,UserName,Password);
				Admin.add(a);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Admin;
		}
		
	 // Delete user based on username
	
		public static boolean deleteUserByUsername(String username){
	
	//delete operation
	
	    try {
	        con = DBConnection.getConnection();
	        Statement stment=con.createStatement();
	        String sql = "delete FROM userandstaff where username='"+username+"'";
	        int result=stment.executeUpdate(sql);
			
			if(result>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
					
		}catch(Exception e) {
			e.printStackTrace();
		}

	    return isSuccess;
	}
		
		
		// Get user details based on username
		
		public static List<user> getUserByUsername(String username) {
		    List<user> users = new ArrayList<>();
		    
		    try {
		        Connection con = DBConnection.getConnection();
		        Statement stment = con.createStatement();
		        String sql = "select * from userandstaff where username = '" + username + "'";
		        ResultSet result = stment.executeQuery(sql);
		        
		        while (result.next()) {
		            String Name = result.getString("name");
		            String Role = result.getString("role");
		            String Email = result.getString("email");
		            String Nic = result.getString("nic");
		            String Username = result.getString("username");
		            
		            user u = new user(Name, Role, Email, Nic, Username);
		            users.add(u);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    
		    return users;
		}

		
}
