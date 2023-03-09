<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>Ticket</title>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
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
	.head2{
		background-color:none;
		text-align:right;
		font-family:Arial;
		height:150;
	}
	.tic{
	  position:relative;
	  transform:translate(200px,50px);
	}
	.lo{
	  position:relative;
	  transform:translate(370px,-138px);
	}
	.da{
	  position:relative;
	  transform:translate(480px,-185px);
	  font-size:12px;
	}
	.ha{
	  position:relative;
	  transform:translate(420px,-175px);
	  font-size:8px;
	  }
	  .to{
	  position:relative;
	  transform:translate(360px,-202px);
	  font-size:6px;
	  }
	  .fr{
	  position:relative;
	  transform:translate(360px,-195px);
	  font-size:6px;
	  }
	 .ti{
	  position:relative;
	  transform:translate(360px,-205px);
	  font-size:6px;
	  }
	  .rs{
	  position:relative;
	  transform:translate(360px,-210px);
	  font-size:6px;
	  }
	  .si{
	  position:relative;
	  transform:translate(492px,-225px);
	  
	  }
	  .sign{
	  position:relative;
	  transform:translate(492px,-235px);
	  font-size:5px;
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
    height:375px;
    width:780px;
	}
</style>
</head>
<body style="position:fixed; margin:0;">
<header class="navbar">
<div class="space">
		<span><img src="photos/logo.png" width=auto height=52>
		<marquee direction="right" style="position:relative;left:20px;top:5px;" scrollamount="9" width=75%><img src="photos/Train8.png" height=50></marquee>
		</span>
		<span class="lb"><button class="btn login" onclick="window.location='mainpage.jsp';"><b>Logout</b></button> </span>
		<span class="rb"><button class="btn register" onclick="window.location='selectstate.jsp';"><b>GoBack</b></button> </span>
</div>


</header>
<div>
<footer class="im">
<div class="tic">
<img src="photos/Ticket.png" width=auto height=250px>
</div>
<div class="lo"><img src="photos/logo.png" width=auto height=25></div>
<div class="ha"><h1>Happy Journey</h1></div>
<p class="da">
<script> document.write(new Date().toLocaleDateString()); </script>
</p>

<%
String t= request.getParameter("choose");
try{
	Connection con	= connect.getCon();
	Statement st=con.createStatement();
	String sql="select * from hyd where t_time='"+t+"'";
	ResultSet rs =st.executeQuery(sql);
	if(rs.next()){%>
	
        <div class="fr"><h1>From: <%=rs.getString(1)%></h1></div>
        <div class="to"><h1>To:&emsp;&ensp;<%=rs.getString(2)%></h1></div>
        <div class="ti"><h1>Time:&nbsp;<%=rs.getString(4)%> - <%=rs.getString(5)%></h1></div>
        <div class="rs"><h1>Rs:&ensp;&ensp;&ensp;<%=rs.getString(3)%></h1></div>
          
        <%
	}
	
}
catch(Exception e)
{System.out.println(e);}%>


<div class="si"><img src="photos/sign.png" width=auto height=30></div>
<div class="sign"><h1><i>Signature</i></h1></div>
</footer>
</div>
</body>
</html>