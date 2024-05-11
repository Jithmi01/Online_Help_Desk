//AddUser_Servlet_page

package helpdesk;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve user inputs from the request which coming from addUser.jsp
		
		String name=request.getParameter("name");
		String role=request.getParameter("role");
		String email=request.getParameter("email");
		String nic=request.getParameter("nic");
		String username=request.getParameter("username");
		
		boolean isTrue;
		
		//purpose to add a user and receive a boolean result
		isTrue=AdminDBUtil.addUser(name, role, email, nic, username);
		// Set content type to HTML
		response.setContentType("text/html"); 
		
		 if(isTrue) {
			 
		        //If the user addition is successful,Success message 
			 
			 	String successMessage = "<p style='background-color: #2980b9; "
			 			+ "color: white; font-size: 80px; font-weight: "
			 			+ "bold; padding: 10px;'>Successfully Added the User</p>";
		        response.getWriter().write(successMessage);
		    } else {
		    	
		        //If the user addition is not successful,Unsuccessful message
		    	
		    	String UnsuccessMessage = "<p style='background-color: #2980b9; "
			 			+ "color: white; font-size: 80px; font-weight: "
			 			+ "bold; padding: 10px;'>UnSuccess</p>";
		        response.getWriter().write(UnsuccessMessage);
		    }
		
		
	}

}
