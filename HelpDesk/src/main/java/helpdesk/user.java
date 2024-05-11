
//encapsulation concept is used

//inheritance concept is used

package helpdesk;
public class user extends UUser{
	
	private String name;
	private String role;
	private String email;
	private String nic;
	private String username;
	
	//Constructor for creating an instance of the user class
	public user(String name, String role, String email, String nic, String username) {
		super(name, role, email, nic, username);
		this.name = name;
		this.role = role;
		this.email = email;
		this.nic = nic;
		this.username = username;
	}


	
	//getter methods for retrieving user information
	
	public String getName() {
		return name;
	}
	
	public String getRole() {
		return role;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getNic() {
		return nic;
	}
	public String getUsername() {
		return username;
	}
	
	@Override
    public void displayDetails() {
        System.out.println("Regular User Details:");
        System.out.println("Name: " + getName());
        System.out.println("Email: " + getEmail());
        System.out.println("NIC: " + getNic());
    }
}


	
	
	


	
	
	