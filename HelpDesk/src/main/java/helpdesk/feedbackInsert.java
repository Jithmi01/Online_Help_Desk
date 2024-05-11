package helpdesk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackInsert
 */
@WebServlet("/feedbackInsert")
public class feedbackInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
 

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Fname = request.getParameter("fname");
		String Lname = request.getParameter("lname");		
		String Email = request.getParameter("email");
		String massage = request.getParameter("msg");
		
		boolean isTrue;
		
		isTrue = feedbackDButil.insertFeedback(Fname, Lname, Email, massage);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("feedbackView.jsp");
			request.setAttribute("insertSuccess", true);

			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuc.jsp");
			dis.forward(request, response);

		}
	}

}
