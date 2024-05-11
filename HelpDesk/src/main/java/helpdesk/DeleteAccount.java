//Delete_Account_Servlet_page

package helpdesk;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteAccount")
public class DeleteAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the username to delete from the request
		String username=request.getParameter("username");
		boolean isDeleted;
		
		//trying to delete the user by username
        isDeleted = AdminDBUtil.deleteUserByUsername(username);

        if(isDeleted==true) {
        	
        	//If the user is successfully deleted from database,forward to addUser.jsp
        	
        	RequestDispatcher dispatcher=request.getRequestDispatcher("addUser.jsp");
        	dispatcher.forward(request, response);
        }
        else {
        	
        	//If deletion is unsuccessful,forward to profile2.jsp
        	
        	RequestDispatcher dispatcher=request.getRequestDispatcher("profile2.jsp");
        	dispatcher.forward(request, response);
        }
    }
}


