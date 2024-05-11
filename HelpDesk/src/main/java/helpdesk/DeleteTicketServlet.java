package helpdesk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteTicketServlet
 */
@WebServlet("/DeleteTicketServlet")
public class DeleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

				String id = request.getParameter("Id");
			
				
				boolean isTrue;
				
				TicketDBUtil ticket4 = new TicketDBUtil();
				
				isTrue = ticket4.deleteTicket(id);
				
				if(isTrue == true) {
					RequestDispatcher dis = request.getRequestDispatcher("userticket.jsp");					
					dis.forward(request, response);
				} else {
					RequestDispatcher dis2 = request.getRequestDispatcher("deleteTicket.jsp");
					dis2.forward(request, response);
				}

				
			}

		
	}


