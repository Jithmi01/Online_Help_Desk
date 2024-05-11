package helpdesk;

public class ticket {
	     private int id;
	    private String name;
	    private String email;
	    private String phone;
	    private String sid; 
	    private String subject;
	    private String description;
	    
	    public ticket(int id, String name, String email, String phone, String sid, 
	    		String Subject, String Description) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.sid = sid;
		this.subject = Subject;
		this.description = Description;
	   
	    }

		public int getId() {
			return id;
		}


		public String getName() {
			return name;
		}


		public String getEmail() {
			return email;
		}


		public String getPhone() {
			return phone;
		}
   
		public String getsid() {
			return sid;
		}
		
		public String getSubject() {
			return subject;
		}


		public String getDescription() {
			return description;
		}

	    
}
