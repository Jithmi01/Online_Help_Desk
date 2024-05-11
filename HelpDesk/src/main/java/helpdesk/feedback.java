package helpdesk;

public class feedback {
	
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String fmsg;
	
	public feedback(int id, String fname, String lname, String email, String fmsg) {
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.fmsg = fmsg;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getEmail() {
		return email;
	}

	public String getFmsg() {
		return fmsg;
	}

}
