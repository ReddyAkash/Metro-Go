<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


        <%
  String r1=request.getParameter("fplacet");
        String r2=request.getParameter("tplacet");
        try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metro","root","1128");
			
			Statement st=con.createStatement();
			if((r2.equals("Chennai Airport")) && (!r1.equals("Alandur"))){
				session.setAttribute("r1",r1);
				session.setAttribute("r2","Alandur");
				session.setAttribute("r3","Chennai Airport");
				response.sendRedirect("TN_redirect.jsp");
			}
			else{
				String sql="select f,t from chennai where f='"+r1+"' and t='"+r2+"'";
				ResultSet rs=st.executeQuery(sql);
				if(rs.next()) {	
					session.setAttribute("r1",r1);
					session.setAttribute("r2",r2);
					response.sendRedirect("TamilNadu_dp.jsp");
				}
				else {
					response.sendRedirect("TamilNadu.jsp?msg=error");
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		};  
  %>

