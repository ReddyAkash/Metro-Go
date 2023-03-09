<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="linklogo.png" type="image/icon">
    <title>Login Form</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        
        .input
        {
            margin:0;
            margin-bottom: 4px;
            margin-top: 12px;

        }
        .input-item
        {
            width:51%;
            margin-left: 12px;
            border-color:brown;
            border-radius:25px;
            padding: 7px 10px 7px 50px;
            background-color:white;
        }
        ::placeholder{
        	color:black;
        }
        #box
        {
            margin-top: 12px;
            margin-bottom: 12px;
        }
        .image{
        background-image: url("pexel.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        opacity:1;
       
        }
        #sub1
        {
         text-align:center;
         margin-top:28px;
         border-radius:25px;
         position: absolute;
         transform: translate(-75px,-22px);
         background-color:white;
         animation: glowing 1300ms infinite;
         
         border-color:brown;
         
        }
        #sub2
        {
         text-align:center;
         position: absolute;
         margin-top:28px;
         transform: translate(5px,-22px);
         border-radius:25px;
         background-color:white;
         animation: glowing 1300ms infinite;
         border-color:brown;
        }
        
        .icon {
    	 position: absolute;
    	 right: 15px;
    	 left: -195px;
    	 font-size: 25px;
    	 height: 2%;
    	 display: flex;
    	 align-items: center;
    	 justify-content: center;
    	 
		}
		.bo{
		 background-color:#a5d4de;
		 position:absolute;
		 transform:translate(430px,10px);
		 border-radius:20px;
		 height:300px;
		 width:300px;
		}
		.ipt{
		 position:relative;
		 transform:translate(382px,110px);
		 
		}
		.ip {
    	 margin: 10px auto;
    	 position: relative;
    	 display: flex;
    	 align-items: center;
    	 justify-content: center;	 
    	 
		}
		 /*@keyframes glowing {
        0% {
          background-color: #00ff00;
          box-shadow: 0 0 2px #00ff00;
        }
        50% {
          background-color: #00ff00;
          box-shadow: 0 0 10px #00ff00;
        }
        100% {
          background-color: #00ff00;
          box-shadow: 0 0 2px #00ff00;
        }*/
      }
        .login {
  		 font-size: 30px;
  		 color: black;
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
<body class="image">
    
    
    <!--  <marquee direction="right"  width=200% 
        style="border:none;
        font-family:'Courier New';">
        
    </marquee>-->
    <div class="bo"><h1 class="login" >Welcome to MetroGo</h1></div>
    <div class="ipt">
    <form  action=login method=post style="width:50%; text-align:center;background: rgba(0, 0, 0, 0.0)">
    
        <div class="ip">
        	<span class="icon"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
        	<input class="input-item"  type="text" placeholder="	Username" name="Username">
        </div>

        <div class="ip">
        	<span class="icon"><i class="fa fa-lock" aria-hidden="true"></i></span>
        	<input class="input-item" type="password" placeholder="	Password" name="Password">
        </div>
        
        <div>
        	<input  id="sub1" type="submit"  value="Login">
        </div>
</form>
<form action=Reg method=post style="width:50%; text-align:center;background: rgba(0, 0, 0, 0.0)">
	 <div>	
        <input  id="sub2" type="submit"  value="Register">
     </div>
</form>
</div>
</body>
</html>