<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
		String n=request.getParameter("Username");
		String p=request.getParameter("Password");
        try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/metro","root","1128");
			Statement st=con.createStatement();
			String sql="select username from user where username='"+n+"' and password='"+p+"'";
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()) {
				session.setAttribute("u",n);
				response.sendRedirect("selectstate.jsp");
			}
			else {
				response.sendRedirect("Login.jsp?msg=error");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		};%>

