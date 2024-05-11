package helpdesk;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewArticleServlet")
public class ViewArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	    // Call the database utility method to retrieve all booking details
        List<Articles> articleDetails = articleDBUtil.getAllArticles();

        if (articleDetails != null && !articleDetails.isEmpty()) {
            // Set the retrieved booking details in the request attribute
            request.setAttribute("ArticleDetails", articleDetails);

            // Forward the request to a JSP for displaying the details
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewArticle.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle the case where no booking details were found
            request.setAttribute("errorMessage", "No Article found.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher.forward(request, response);
        }
		
		
	}


}
