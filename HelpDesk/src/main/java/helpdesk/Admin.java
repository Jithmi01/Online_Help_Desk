
//encapsulation concept is used-AdminID, Name, Email, WorkPhone, UserName, and Password as private

//inheritance concept is used-public class Admin extends UUser parent child relationship

package helpdesk;
public class Admin extends UUser{
	
	private int AdminID;
	private String Name;
	private String Email;
	private String WorkPhone;
	private String UserName;
	private String Password;
	
	//Constructor for creating an instance of the Admin class
	
	public Admin(int AdminID, String Name, String Email, String WorkPhone, String UserName, String Password) {
		//super keyword used for inheritance purpose-initialize the properties inherited from the UUser class.
		super(Name, "Admin", Email, "N/A", UserName);
		this.AdminID = AdminID;
		this.Name = Name;
		this.Email = Email;
		this.WorkPhone = WorkPhone;
		this.UserName = UserName;
		this.Password = Password;
	}
	
	//getter methods for retrieving admin information
	
	public int getAdminId() {
		return AdminID;
	}
	
	
	public String getName() {
		return Name;
	}

	public String getEmail() {
		return Email;
	}

	public String getWorkPhone() {
		return WorkPhone;
	}

	public String getUserName() {
		return UserName;
	}

	public String getPassword() {
		return Password;
	}

	@Override
    public void displayDetails() {
		System.out.println("Regular User Details:");
	    System.out.println("Name: " + getName());
	    System.out.println("Role: " + getRole());
	    System.out.println("Email: " + getEmail());
	    System.out.println("NIC: " + getNic());
	    System.out.println("Username: " + getUsername());
    }

	
}
