
//Abstracion is used

//encapsulation concept is used


package helpdesk;

public abstract class UUser{
	private String name;
    private String role;
    private String email;
    private String nic;
    private String username;
    
    public UUser(String name, String role, String email, String nic, String username) {
    	this.name = name;
        this.role = role;
        this.email = email;
        this.nic = nic;
        this.username = username;
    }
    
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
    
    public abstract void displayDetails();
}

