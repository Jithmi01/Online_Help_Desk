package helpdesk;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class articleDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean addArticle(String title, String description,String author){
		
		boolean isSuccess = false;
		
		try {
			//DB connect part -------------------------------------------------------------------------------
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			//------------------------------------------------------------------------------------------------------
			
			String sql = "insert into clientdata values(0,'"+title+"','"+description+"','"+author+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
						
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}


public static List<Articles> getAllArticles() {
    List<Articles> articles = new ArrayList<>();

    try (Connection con = DBConnection.getConnection();
         Statement stmt = con.createStatement();
         ResultSet rs = stmt.executeQuery("SELECT * FROM clientdata")) {
        while (rs.next()) {
        	int articleId = rs.getInt(1);
			String atitle = rs.getString(2);
			String adescription = rs.getString(3);
			String aauthor = rs.getString(4);
			
			
			Articles h = new Articles(articleId,atitle,adescription, aauthor);
			articles.add(h);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return articles;
}



public static boolean updateArticle(int articleId, String updatedTitle, String updatedDescription, String updatedAuthor) {
    boolean isUpdated = false;

    try {
        con = DBConnection.getConnection();
        String sql = "UPDATE clientdata SET title=?, description=?, author=? WHERE idKnowledgeBase=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, updatedTitle);
        ps.setString(2, updatedDescription);
        ps.setString(3, updatedAuthor);
        ps.setInt(4, articleId);

        int rowsAffected = ps.executeUpdate();

        if (rowsAffected > 0) {
            isUpdated = true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } 

    return isUpdated;
}


public static boolean deleteArticle(String articleId) {
	boolean isSuccess = false;
		int convId=Integer.parseInt(articleId);
	
	
	try {
		con=DBConnection.getConnection();
		stmt=con.createStatement();
		String sql="delete from clientdata where idKnowledgeBase='"+convId+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}
		else {
			isSuccess=false;
		}
		
		
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
	
	
	return isSuccess;
}


}
