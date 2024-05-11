package helpdesk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TicketInsert
 */
@WebServlet("/TicketInsert")
public class TicketInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String sid = request.getParameter("sid");
		String subject = request.getParameter("subject");
		String description = request.getParameter("description");
		
		
		boolean isTrue;
		
		isTrue = TicketDBUtil.insertTicket(name, email, phone, sid,subject,description);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			request.setAttribute("insert",true);
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("insertticket.jsp");
			dis.forward(request,response);
		}
	}

}
