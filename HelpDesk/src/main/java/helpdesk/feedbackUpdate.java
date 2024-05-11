package helpdesk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedbackUpdate
 */
@WebServlet("/feedbackUpdate")
public class feedbackUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public feedbackUpdate() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String feedbackId = request.getParameter("id");
        int feedbackIdInt = Integer.parseInt(feedbackId);
        String updatedFeedback = request.getParameter("nFB");

        String url = "jdbc:mysql://localhost:3306/helpdesk";
		String user = "root";
		String pass = "155157";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Establish a database connection
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);

            // Define your SQL update query
            String sqlQuery = "UPDATE cus_feedback SET cus_feedback = ? WHERE feedback_id = ?";

            // Create a prepared statement
            PreparedStatement ps = connection.prepareStatement(sqlQuery);
            ps.setString(1, updatedFeedback);
            ps.setInt(2, feedbackIdInt);

            // Execute the update
            int rowsUpdated = ps.executeUpdate();

            // Check if the update was successful
            if (rowsUpdated > 0) {
                // If successful, forward to feedbackView.jsp with a success message
                RequestDispatcher dis = request.getRequestDispatcher("feedbackView.jsp");
                request.setAttribute("updateSuccess", true);
                dis.forward(request, response);
            } else {
                // If the update fails, forward to a different page or show an error message
                RequestDispatcher dis = request.getRequestDispatcher("unsuc.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            // Handle exceptions gracefully and provide error information
            e.printStackTrace();
            // You might want to set an error attribute and handle it in a JSP
            request.setAttribute("errorMessage", "An error occurred while updating feedback.");
            RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
            dis.forward(request, response);
        } finally {
            // Close database resources in a finally block
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
