<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>Andhra booking</title>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.route{
	  background-image:url("photos/chnmetror.webp");
	}
	.bo{
		 background-color:#a5d4de;
		 position:fixed;
		 transform:translate(400px,-150px);
		 border-radius:10px;
		 height:135px;
		 width:310px;
	}
	.fr
	{
	 transform:translate(20px,-1px);
	 padding:13px 15px 5px;
	}
	.tr
	{
	 transform:translate(20px,-2px);
	 padding:10px 15px 10px;
	}
	.ts{
	 transform:translate(19px,-1px);
	
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
	.lb
	{
	 position:absolute;
	 transform:translate(27px,8px);
	}
	.rb
	{
	 position:absolute;
	 transform:translate(25px,24px);
	}
	.state{
		 position:absolute;
		 transform:translate(430px,-230px);
		 
		
	}
	td{
	 text-align: center
	}
	.tab{
	width:300px;
	}
	.sub1
        {
         text-align:center;
         margin-top:28px;
         border-radius:4px;
         position: absolute;
         transform: translate(70px,-20px);
         background-color:#d43e3e;
         border:none;
         
        }
      .sub2
        {
         text-align:center;
         margin-top:28px;
         border-radius:4px;
         position: absolute;
         transform: translate(296px,132px);
         padding:1px 10px 1px 10px;
         background-color:#d43e3e;
         border:none;
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

<body style="margin:0">
<header class="navbar">
<div class="space">
		<span><img src="photos/logo.png" width=auto height=52>
		<marquee direction="right" style="position:relative;left:20px;top:5px;" scrollamount="9" width=75%><img src="photos/Train8.png" height=50></marquee>
		</span>
		<span class="lb"><button class="btn login" onclick="window.location='mainpage.jsp';"><b>Logout</b></button> </span>
		<span class="rb"><button class="btn register" onclick="window.location='selectstate.jsp';"><b>GoBack</b></button> </span>
</div>
<div class="head2">
	<span id="f">Follow us on </span>
	<span class="icon"><a href="https://www.instagram.com/_thenameis_vinoth_?r=nametag" target="_blank"><i class="fa fa-instagram fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://www.facebook.com/akash.reddy.33671748" target="_blank"><i class="fa fa-facebook-square fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://www.linkedin.com/in/akashreddy-tatiparthi-70ab56246" target="_blank"><i class="fa fa-linkedin-square fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://twitter.com/ashybcci?t=UuOwwgSckmhWuQFlpBEfOg&s=08" target="_blank"><i class="fa fa-twitter fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://t.me/thenameis_vinothkanna" target="_blank"><i class="fa fa-telegram fa-lg" aria-hidden="true"></i></a></span>
	
</div>
</header>
<h1>Andhra Available Stations</h1>
<img src="photos/Andhraroute.png" width="250" style="margin:10px">
<div class="state"><h1 class="login" >Andhra Metro</h1></div>
  <div class="bo">
  <form action="Ticket_A.jsp">
  <table class="tab">
        <thead>
          <tr>
            <th scope="col">Starts at</th>
            <th scope="col">Reaches by</th>
            <th scope="col">Price</th>
            <th scope="col">Choose</th>
          </tr>
        </thead>
        <tbody><%
String start= request.getParameter("fplace");
String destination= request.getParameter("tplace");
try{
	Connection con	= connect.getCon();
	Statement st=con.createStatement();
	String sql="select * from hyd where f='"+start+"' and t='"+destination+"' order by f_time asc";
	ResultSet rs =st.executeQuery(sql);%>
	
	<% 
	while(rs.next())
	{
		
		%>
        <tr>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(3)%></td>
          <td>
                <input type="radio" id="vehicle1" name="choose" value="<%=rs.getString(5)%>"> 
                
              
          </td>
        </tr>
        
        <%
          		}
	
}
catch(Exception e)
{System.out.println(e);}%>

</tbody>
      </table>
      <div>
  	     <input  class="sub1" type="submit"  value="Proceed">
      </div>
      </form>
      <br>
      <br>
      <br>
</div>
<span><button class="sub2" onclick="window.location='Andhra.jsp';">Cancel</button> </span>
</body>
</html>