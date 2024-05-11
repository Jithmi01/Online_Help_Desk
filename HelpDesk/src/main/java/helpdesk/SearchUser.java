//Polymorphism is used-this list is declared to hold objects of the User class,doGet,doPost method used

//inheritance is used

//Search_A_User_Servlet_page
package helpdesk;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SearchUser")
public class SearchUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		
		
		List<user> userDetails = AdminDBUtil.getUserByUsername(username);

		if (userDetails != null && !userDetails.isEmpty()) {
			
			/* Polymorphism used.List<User> can contain various User types, like Admin or other subclasses of User.
			actually hold instances of different classes derived from User*/
			
		    request.setAttribute("user", userDetails);
		    
		 // If the user is successfully searched, send the data to a JSP
		    
		    RequestDispatcher dispatcher = request.getRequestDispatcher("userDetails.jsp");
		    dispatcher.forward(request, response);
		}
		else {
	        // If the search is unsuccessful, display an error message
	        response.sendRedirect("searchUser.jsp?userNotFound=true");
	    }
	}
}
