<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setDateHeader("Expires",-1);
String xyz=session.getAttribute("u").toString();
if(xyz==null){
	response.sendRedirect("Login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>Andhrapradesh booking</title>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.boy{
	margin:0;
	background-image:url("photos/bg2.png");
  background-size:100%;
  position:fixed;
	}
	.route{
	  background-image:url("photos/chnmetror.webp");
	}
	.bo{
		 background-color:#a5d4de;
		 position:fixed;
		 transform:translate(400px,-150px);
		 border-radius:10px;
		 height:110px;
		 width:250px;
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
		 transform:translate(375px,-220px);
		 
		
	}
	.sub1
        {
         text-align:center;
         margin-top:28px;
         border-radius:4px;
         position: absolute;
         transform: translate(450px,-100px);
         background-color:#d43e3e;
         border:none;
         
        }
      .sub2
        {
         text-align:center;
         margin-top:28px;
         border-radius:4px;
         position: absolute;
         transform: translate(540px,-100px);
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

<body class="boy" style="margin:0">
<header class="navbar">
<div class="space">
		<span><img src="photos/logo.png" width=auto height=52>
		<marquee direction="right" style="position:relative;left:20px;top:5px;" scrollamount="9" width=75%><img src="photos/Train8.png" height=50></marquee>
		</span>
		<span class="lb"><button class="btn login" onclick="window.location='Login.jsp';"><b>Logout</b></button> </span>
		<span class="rb"><button class="btn register" onclick="window.location='selectstate.jsp';"><b>GoBack</b></button> </span>
</div>
</header>
<h1>Andhrapradesh Available Stations</h1>

<img src="photos/Andhraroute.png" width="250" style="margin:10px">
<div class="state"><h1 class="login" >AndhraPradesh Metro</h1></div>
<form action="Andhra_dp.jsp" method=post class="from">
  <div class="bo">
    <div class="fr">
      <label for="fplace">From:</label>
  	  <select name="fplace">
  		<option value="Select">Select</option>
 	    <option value="Ameerpet">Ameerpet</option>
 	    <option value="Yusufguda">Yusufguda</option>  
  	    <option value="jubli hills">jubli hills</option>
  	    <option value="Hitec city">Hitec city</option>
 	  </select>
    </div>
  
    <div class="tr">
      <label for="tplace">To:</label>
  	  <select name="tplace" class="ts">
  		<option value="Select">Select</option>
 	    <option value="Ameerpet">Ameerpet</option>
 	    <option value="Yusufguda">Yusufguda</option>  
  	    <option value="jubli hills">jubli hills</option>
  	    <option value="Hitec city">Hitec city</option>
 	  </select>
    </div>
  </div>
  <div>
  	<input  class="sub1" type="submit"  value="Proceed">
  </div>
</form>
<span><button class="sub2" onclick="window.location='TamilNadu.jsp';">Clear</button> </span>

</body>
</html>