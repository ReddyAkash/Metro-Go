<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>Select State</title>

    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.img{
		background:url("photos/selectstatebg.jpg");
        position: fixed;
        top: 0;
		background-repeat: no-repeat;
        background-size: 100%;
        opacity:1;
	}
	.tex{
		
		position:absolute;
		font-size: 17px;
  		color: #fff;
  		text-align: center;
  		
	}
	.login
	{
	 position:relative;
	 float:right;
	 
	}
	.text
	{
     font-size: 18px;
     transform:translate(60px,10px);
     width:500%;
     color: #d2ff4d;
  	 text-align: center;
  	 font-family:'Courier New';
	}
	.sub1
        {
         text-align:center;
         margin-top:28px;
         border-radius:4px;
         position: absolute;
         transform: translate(653px,-118px);
         background-color:#d2ff4d;
         border:none;
         
        }
        .use
        {
         transform: translate(-295px,-157px);
        }
        .useic
        {
         vertical-align:top;
          color: white;
          position:relative;
         transform: translate(0px,-400px);
        }
        .icons {
           
        }
</style>
</head>
<body class="img">
<span>
<img src="photos/Indmap.png" alt="Workplace" usemap="#workmap" width=300px height=400px />
</span>
<span class="tex">
	<marquee direction="left"  width=618% 
        style="border:none;
        font-family:'Courier New';
        postion:relative;left:150px;">
        <h1>MetroGo Welcomes You</h1>
        
    </marquee>
    <h2 class="text">Select State from the map to Proceed</h2>
    <%
    try{
    	String data=session.getAttribute("u").toString();    	
    	%><div class='use'><%out.print(data);%></div>
    <%}
    catch (Exception e) {
		e.printStackTrace();
	};
    %>
</span>
<div class="useic">
<span><i class="fa fa-user-circle" aria-hidden="true"></i></span>
</div>
<div>
  	
  	<button class="sub1" onclick="window.location='PastBook.jsp';"><b>Past Booking</b></button>
  </div>
  



<map name="workmap">
	<area shape="rect" coords="17,103,97,129" alt="Delhi" href="Delhi.jsp">
	<area shape="poly" coords="48,202,67,201,98,200,132,201,135,221,113,222,93,250,76,272,57,273,47,236" alt="Maharasthra" href="Maharashtra.jsp">
	<area shape="poly" coords="216,137,223,136,222,153,227,199,199,201,184,183" alt="West Bengal" href="kolkata.jsp">
	<area shape="poly" coords="113,226,98,251,93,280,96,295,118,302,141,292,163,262,184,234" alt="Andhra Pradesh" href="Andhra.jsp">
	<area shape="poly" coords="90,231,110,366,131,349,140,335,143,296,107,305" alt="Tamil Nadu" href="TamilNadu.jsp">
	
</map>

</body>
</html>