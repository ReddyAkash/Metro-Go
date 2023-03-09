package project;
import java.sql.*;

public class connect {
		public static Connection getCon()
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metro","root","1128");
			    return con;
			}
			catch(Exception e)
			{
				System.out.println(e+"\nerror in connect");
				return null;
			}
		}
}