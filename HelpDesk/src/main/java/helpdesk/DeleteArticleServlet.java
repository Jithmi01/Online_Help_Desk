package helpdesk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteArticleServlet")
public class DeleteArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String articleId=request.getParameter("articleId");
		boolean isTrue;
		
		isTrue=articleDBUtil.deleteArticle(articleId);
		
		
		if (isTrue) {
		    String successMessage = "Article Deleted successfully.";
			
			 response.sendRedirect("Staff.jsp?successMessage=" + successMessage);
			 
			/*
			 * RequestDispatcher dispatcher =
			 * request.getRequestDispatcher("viewArticle.jsp");
			 */
		}
		// In the case of a failure to delete the booking
		else {
			/*
			 * List<Booking> bookingDetails = BookingDBUtil.getBookingDetails(booking_id);
			 * request.setAttribute("bookingDetails", bookingDetails);
			 */

		    String unsuccessMessage = "Failed to delete Article.";
		    request.setAttribute("unsuccessMessage", unsuccessMessage);

		    RequestDispatcher dis1 = request.getRequestDispatcher("Staff.jsp");
		    dis1.forward(request, response);
		}
	}

}
