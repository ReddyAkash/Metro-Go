

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/

@WebServlet("/RegLog")
public class RegLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metro","root","1128");
			String f=request.getParameter("Fullname");
			String e=request.getParameter("Email");
			String n=request.getParameter("Username");
			String p=request.getParameter("Password");
			Statement st=con.createStatement();
			/*PreparedStatement ps=con.prepareStatement("select username from user where username=? and password=?");
			ps.setString(1, n);
			ps.setString(2, p);*/
			String sql="insert into user values('"+n+"','"+p+"','"+f+"','"+e+"')";
			int i=st.executeUpdate(sql);
			if(i>0) {
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
				response.sendRedirect("Login.jsp");
			}
			else {
				out.println("error");
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		};
	}

}
