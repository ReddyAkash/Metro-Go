<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="linklogo.png" type="image/icon">
	<title>MetroGo</title>
	<meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .navbar {
        overflow: hidden;
        position: fixed;
        top: 0;
        width: 100%;
    }
    .main {
  padding: 16px;
  background-image:url("photos/bg2.png");
  background-size:100%;
  margin-top: 30px;
  height: 600px;
}

	.space{

		background-color:#a5d4de;
		border-bottom: 1px;
		/box-shadow: 5px 10px 18px #a8dadc;/
		height:110;
	}
	.head2{
		background-color:none;
		
		position:relaive;
		text-align:right;
		font-family:Arial;
		height:150;
	}
	#f
	{
	 vertical-align:top;
	}
	.head2 .icon
	{
	 display:inline-block;
	 width:18px;
	 height:18px;
	 background:#fff;
	 box-shadow: 0px 5px 15px -15px #aaa;
	 margin:1px;
	 border-radius:30%;
	 overflow:hidden;
	 
	 color:#42d2ff;
	}
	.head2 .icon i
	{
	 
	 z-index:4;
	 transition:0.3s ease-in-out;
	}
	.head2 .icon::before
	{
	 content:"";
	 
	 width:120%;
	 height:120%;
	 background:linear-gradient(#00c6ff,#0072ff);
	 transform:rotate(45deg);
	 left:-110%;
	 top:90%;
	}
	.head2 .icon:hover i
	{
	 color:#fff;
	 transform:scale(1.3);
	}
	.head2 .icon:hover::before
	{
	 animation: onHover 0.7s 1;
	 left:-10%;
	 top:-10%;
	}
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

	#text
	{
	 font-family:Monaco;
	 color:black;
	 text-align:justify;
   width:100%;
	}
	.about{
		padding:10px 10px 2px 10px;
	}

	.lb
	{
	 position:absolute;
	 transform:translate(38px,8px);
	}
	.rb
	{
	 position:absolute;
	 transform:translate(32px,24px);
	}
	.btn {
  border: none;
  background-color: inherit;
  /padding: 14px 28px;/
  font-size: 12px;
  cursor: pointer;
  display: inline-block;
}
.btn:hover {background: cyan;}
.login {color: black;
font-family:monaco;}
.register {color: black;
font-family:monaco;}
    .dev{
    
    
    }

	</style>
</head>
<body style="margin:0">
<header class="navbar">
<div class="space">
		<span><img src="photos/logo.png" width=auto height=52>
		<marquee direction="right" style="position:relative;left:20px;top:5px;" scrollamount="9" width=75%><img src="photos/Train8.png" height=50></marquee>
		</span>
		<span class="lb"><button class="btn login" onclick="window.location='Login.jsp';"><b>Login</b></button> </span>
		<span class="rb"><button class="btn register" onclick="window.location='Register.jsp';"><b>Register</b></button> </span>
</div>

</header>

<footer class="main">
<br />

<table >
<tr>
  <div class="head2">
	<span id="f">Follow us on </span>
	<span class="icon"><a href="https://www.instagram.com/_thenameis_vinoth_?r=nametag" target="_blank"><i class="fa fa-instagram fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://www.facebook.com/akash.reddy.33671748" target="_blank"><i class="fa fa-facebook-square fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://www.linkedin.com/in/akashreddy-tatiparthi-70ab56246" target="_blank"><i class="fa fa-linkedin-square fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://twitter.com/ashybcci?t=UuOwwgSckmhWuQFlpBEfOg&s=08" target="_blank"><i class="fa fa-twitter fa-lg" aria-hidden="true"></i></a></span>
	<span class="icon"><a href="https://t.me/thenameis_vinothkanna" target="_blank"><i class="fa fa-telegram fa-lg" aria-hidden="true"></i></a></span>

</div>
</tr>
  <tr >
    <td>
      <span>
        <img src="photos/Dmetro.jpg" width=350px >
      </span>
    </td>
    <td>
      <div class="about">
      <p id="text"><u>About Us</u><br>Metro application is for users who wish to avail the metro facilities in many places of India. The approximate amount of routes available, approximate cost, online booking, past bookings and much more. Through the displayed routes, the user gets a clear-cut information about the stations the metro passes through and where the user tends to travel. Based on users request it is possible to proceed to ticket booking and users details are thus stored in the database from where ticket details can be obtained. </p>
      </div>
    </td>
  </tr>
  



</table>

  <h3 align="center">Developers:</h3>
  <table class="dev" width="720px">
  <tr align="center">
  
  <td></td>
  <td><img src="photos/vk.png" width="100px"></td>
  <td><img src="photos/ASH.png" width="100px"></td>
  <td><img src="photos/AK.png" width="100px"></td>
  </tr>
  <tr align="center">
  <td></td>
  <td><h5>Vinoth Kanna M M</h5></td>
  <td><h5>Ashwin Suresh</h5></td>
  <td><h5>T Akash Reddy</h5></td>
  <td></td>
  </tr>
  
  </table>

  
  
 

</footer>

</body>
</html>
