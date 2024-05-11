//Update_Account_Servlet_page

package helpdesk;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAccount")
public class UpdateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve user new update admin inputs from the request which coming from updateAccount.jsp
		
		String adminid=request.getParameter("adminid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String workphone=request.getParameter("workphone");
		
		boolean isTrue;
		
		isTrue=AdminDBUtil.updateAccount(adminid, name, email, workphone);
		
		if(isTrue==true) {
			
			//Reading(retrieving) admin details from the database based on the provided adminid
			
			//create a list for what we are going to carry on while going to profile2.jsp(what updated data want to carry on)
			
			List<Admin> AdminDetails=AdminDBUtil.getAdminDetails(adminid);
			request.setAttribute("AdminDetails", AdminDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("profile2.jsp");
			dis.forward(request, response);
		}
		else {
			
			//Reading(retrieving) admin details from the database based on the provided adminid
			
			
			List<Admin> AdminDetails=AdminDBUtil.getAdminDetails(adminid);
			request.setAttribute("AdminDetails", AdminDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("profile2.jsp");
			dis.forward(request, response);
		}
	}

}
