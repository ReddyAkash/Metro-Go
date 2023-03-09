<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="linklogo.png" type="image/icon">
    <title>creating forms</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        #form
        {
            width:300px;
            background-color:white;
            padding:24px;
            transform: translate(5px,-22px);
            margin-left:auto;
            margin-right:auto;
            background: rgba(0, 0, 0, 0.0);
        }
        .input
        {
            margin:0;
            margin-bottom: 4px;
            margin-top: 12px;

        }
        .input-item
        {
            width:100%;
            border-color:#54E8BB;
            border-radius:25px;
            padding: 7px 10px 7px 50px;
            background-color:#F535AA;
        }
        ::placeholder{
        	color:black;
        }
        #box
        {
            margin-top: 12px;
            margin-bottom: 12px;
        }
        .image
        {
          background-image:url("photos/RegPic.png");
          background-repeat:no-repeat;
          background-size:cover;
          background-color:#033E3E;
          
        }
        .ip {
    	 margin: 10px auto;
    	 position: relative;
    	 display: flex;
    	 align-items: center;
    	 justify-content: center;	 
    	 
		}
		.icon {
    	 position: absolute;
    	 right: 15px;
    	 left: -251px;
    	 font-size: 25px;
    	 height: 2%;
    	 display: flex;
    	 align-items: center;
    	 justify-content: center;
    	 
		}
        .sub{
        background-color: #1c87c9;
        -webkit-border-radius: 60px;
        border-radius: 60px;
        border: none;
        color:black;
        cursor: pointer;
        display: inline-block;
        font-family: sans-serif;
        font-size: 15px;
        padding: 5px 15px;
        text-align: center;
        text-decoration: none;
        margin-top:28px;
        animation: glowing 1300ms infinite;
        align:center;
        position:relative;
      }
      .item{
       text-align:center;
      }
      
      @keyframes glowing {
        0% {
          background-color: #54E8BB;
          box-shadow: 0 0 2px #54E8BB;
        }
        50% {
          background-color: #54E8BB;
          box-shadow: 0 0 10px #54E8BB;
        }
        100% {
          background-color: #54E8BB;
          box-shadow: 0 0 2px #54E8BB;
        }
      }
        .glow {
  		 font-size: 30px;
  		 color: #fff;
  		 text-align: center;
  		 animation: glow 1s ease-in-out infinite alternate;
		}

		@-webkit-keyframes glow {
		  from {
		    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
		  }
  
		  to {
		    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
		  }
		}
    </style>
</head>
<body class=image >
<div>
<h1 class="glow" style="text-align:center">NEW REGISTRATION</h1>
<form action=RegLog method=post id="form">
        
        <div class="ip">
	        <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span>
    	    <input class="input-item" type="text" placeholder="Fullname" name="Fullname" required>
        </div>

        <div class="ip">
        	<span class="icon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
        	<input class="input-item" type="email" placeholder="Email" name="Email" pattern="^[a-zA-Z0-9]+@[a-zA-Z0-9]{}$" required >
        </div>
        
        <div class="ip">
        	<span class="icon"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
        	<input class="input-item" type="text" placeholder="Username" name="Username" required>
        </div>

        <div class="ip">
        	<span class="icon"><i class="fa fa-lock" aria-hidden="true"></i></span>
        	<input class="input-item" type="password" placeholder="Password" name="Password" required>
        </div>

        <div class="item">
        	<input class="sub" type="submit"  value="Register">
        </div>
        
</form>
</div>
</body>
</html>