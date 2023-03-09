<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>Delhi booking</title>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.route{
	  background-image:url("photos/chnmetror.webp");
	}
	.boy{
	margin:0;
	background-color:#DFF6FF;
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
		 transform:translate(450px,-220px);
		 
		
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
         transform: translate(296px,131.5px);
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
	.im{
	background-image:url("photos/bg2.png");
    background-size:100%;
    height:353px;
    
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
<footer class="im">
<h1>Delhi Available Stations</h1>
<img src="photos/Delhiroute.png" width="250" style="margin:10px">
<div class="state"><h1 class="login" >Delhi Metro</h1></div>
  <div class="bo">
  <form action="Ticket.jsp">
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
	String sql="select * from delhi where f='"+start+"' and t='"+destination+"' order by f_time asc";
	//String sql="select * from delhi where f='Pitampura' and t='Paschim Vihar' order by f_time asc";
	ResultSet rs =st.executeQuery(sql);
	int i=1;%>
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
        i++;  		}
	if(i==1){
    	response.sendRedirect("Delhi.jsp?msg=error");        
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
<span><button class="sub2" onclick="window.location='Delhi.jsp';">Cancel</button> </span>
</footer>
</body>
</html>