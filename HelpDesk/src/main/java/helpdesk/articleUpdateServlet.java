package helpdesk;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/articleUpdateServlet")
public class articleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Retrieve updated hotel information from request parameters
        int articleId = Integer.parseInt(request.getParameter("articleId"));
        String updatedTitle= request.getParameter("atitle");
        String updatedDescription = request.getParameter("adescription");
        String updatedAuthor= request.getParameter("aauthor");
       

        // Call a method in your hotelDBUtil to update the hotel information in the database
        boolean isUpdated = articleDBUtil.updateArticle(articleId, updatedTitle,  updatedDescription, updatedAuthor);

        if (isUpdated) {
            // Redirect to a success page
            response.sendRedirect("success2.jsp");
            
        } else {
            // Redirect to an error page
            response.sendRedirect("unsuccess.jsp");
        }
		
		
		
	}

}
