// Admin_login_Servlet page

package helpdesk;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	// Initialize a PrintWriter to send responses
    	PrintWriter out=response.getWriter();
    	// Set the content type of the response
    	response.setContentType(getServletInfo());
    	
    	// Retrieve(Read in CRUD) username and password from the request which entered to adminLogin.jsp
    	
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        boolean isTrue;
        
        //validate the provided credentials
        
        isTrue=AdminDBUtil.validate(username, password);
        
        if(isTrue==true) {
        	
        /*if validate is successfull, retrieve(Read operation in CRUD) Admin details from arraylist  and 
        forward and display to the admin profile page*/
        	
        	List<Admin> AdminDetails=AdminDBUtil.getAdmin(username, password);
        	request.setAttribute("AdminDetails", AdminDetails);
        
        //forward admin details
        //RequestDispatcher class used to redirect data from servlet classto the profile2.jsp
        	
        	RequestDispatcher dispatcher = request.getRequestDispatcher("profile2.jsp");
            dispatcher.forward(request, response);
            
        }else {
        	
        	//if validate is unsuccessfull,display an alert and redirect back to the login page
        	
        	out.println("<script>");
            out.println("alert('Username or password is incorrect');");
            out.println("location='adminLogin.jsp';");
            out.println("</script>");
        }
        
        
    }
}

