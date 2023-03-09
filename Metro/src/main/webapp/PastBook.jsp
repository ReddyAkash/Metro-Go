<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>Booking History</title>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.tab{
	width:400px;
	}
	.navbar {
        overflow: hidden;
        position: fixed;
        display:block;
        top: 0;
        width: 100%;
    }
	.space{
	
		background-color:#a5d4de;
		border-bottom: 1px;
		/box-shadow: 5px 10px 18px #a8dadc;/
		height:110;
	}
	.boy{
	margin:0;
	background-image:url("photos/bg2.png");
	position:fixed;
	}
	table {
  	  border-collapse: collapse;
  	  table-layout: fixed;
  	  width: 200px;
	}

	th,td { 
	 border: 1px solid black;
	  width: 100px;
	  text-align: center;
	  overflow: hidden;
	}
	th{
	background-color:#778FD2;
	}
	.name{
		transform:translate(5px,62px);
	}
	.bo{
		 background-color:#a5d4de;
		 position:fixed;
		 padding: 15px 10px 30px 15px;
		 transform:translate(90px,120px);
		 border-radius:10px;
		 height:130px;
		 width:597px;
		 overflow:auto;
	}
	.lb
	{
	 position:absolute;
	 transform:translate(27px,8px);
	}
	.st{
		 position:absolute;
		 transform:translate(320px,-15px);
		 width:300px;
	}
	.lo{
	    color: black;
	    font-family:monaco;
	    
	}
	.thd{
		width:800px;
	}
	.useic
     {
         vertical-align:top;
          color: white;
     }
	.rb
	{
	 position:absolute;
	 transform:translate(25px,24px);
	}
	.btn {
  	 border: none;
 	 background-color: inherit;
 	 padding:2px 15px;
  	 font-size: 12px;
 	 cursor: pointer;
 	 display: inline-block;
	}
	.btn:hover {background: cyan;}
	.login {color: black;
	font-family:monaco;}
	.register {color: black;
	font-family:monaco;}
	@kayframes onHover
	{
	 0%
	 {
	 left:-110%;
	 top:90%;
	 }
	 50%
	 {
	 left:10%;
	 top:-30%;
	 }
	 100%
	 {
	  top:-10%;
	  left:-10%;
	 }
	}
	</style>
</head>
<body class="boy">
<header class="navbar">
<div class="space">
		<span><img src="photos/logo.png" width=auto height=52>
		<marquee direction="right" style="position:relative;left:20px;top:5px;" scrollamount="9" width=75%><img src="photos/Train8.png" height=50></marquee>
		</span>
		<span class="lb"><button class="btn login" onclick="window.location='mainpage.jsp';"><b>Logout</b></button> </span>
		<span class="rb"><button class="btn register" onclick="window.location='selectstate.jsp';"><b>GoBack</b></button> </span>
</div>
</header>
<div class="name">

<span><i class="fa fa-user-circle" aria-hidden="true"></i></span>

<%String data=session.getAttribute("u").toString();
	out.print(data);
%>
<div class="st"><h2 class="lo" >Booking History</h2></div>
</div>
<div class="bo">
<table class="tab">
        <thead>
          <tr class="thd">
            <th scope="col" style="padding:10px">From</th>
            <th scope="col" style="padding:10px">To</th>
            <th scope="col" style="padding:10px">From Time</th>
            <th scope="col" style="padding:10px">To Time</th>
            <th scope="col" style="padding:10px; width:80px;">Date</th>
          </tr>
        </thead>
        <tbody><%

    	
    	try{
			Connection con	= connect.getCon();
			Statement st=con.createStatement();
			String sql="select distinct * from user_book where username='"+data+"'";	
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()){		
		%>
        <tr>
          <td ><%=rs.getString(2)%></td>
          <td ><%=rs.getString(3)%></td>
          <td ><%=rs.getString(4)%></td>
          <td ><%=rs.getString(5)%></td>
          <td ><%=rs.getString(6)%></td>
        </tr>
        
        <%
          		}
	
}
catch(Exception e)
{System.out.println(e);}%>

</tbody>
      </table>
</div>
</body>
</html>