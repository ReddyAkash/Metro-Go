<%@page import ="project.connect" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="linklogo.png" type="image/icon">
<title>TamilNadu Redirection</title>
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	
	.boy{
	margin:0;
	background-image:url("photos/bg2.png");
	background-size:100%;
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
		transform:translate(420px,-45px);
	    width:290px;
		text-align:center;
		color:red;
	}
	.tab{
	  width:300px;
	}
	th,td{
	text-align: center;
	}
	.bo{
		 background-color:#a5d4de;
		 position:fixed;
		 transform:translate(410px,20px);
		 border-radius:10px;
		 height:245px;
		 width:310px;
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
         transform: translate(590px,210px);
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
	
	.if{
	position:fixed;
		transform:translate(10px,0px);
	}
	.name{
		transform:translate(5px,-10px);
	}
	
</style>

</head>

<body class="boy" style="position:fixed">
<header class="navbar">
<div class="space">
		<span><img src="photos/logo.png" width=auto height=52>
		<marquee direction="right" style="position:relative;left:20px;top:5px;" scrollamount="9" width=75%><img src="photos/Train8.png" height=50></marquee>
		</span>
		<span class="lb"><button class="btn login" onclick="window.location='mainpage.jsp';"><b>Logout</b></button> </span>
		<span class="rb"><button class="btn register" onclick="window.location='selectstate.jsp';"><b>GoBack</b></button> </span>
</div>
</header>
<h1>Tamil Nadu Redirection</h1>

<div class="name">
	<span><i class="fa fa-user-circle" aria-hidden="true"></i></span>
	<%String data=session.getAttribute("u").toString();
	out.print(data);
String start= session.getAttribute("r1").toString();
String destination= session.getAttribute("r2").toString();
String fn= session.getAttribute("r3").toString();%>
</div>
<% 
if(start.equals("Koyambedu")){
%>
<iframe class="if" src="https://www.google.com/maps/embed?pb=!1m34!1m12!1m3!1d62193.31822596834!2d80.15938147376777!3d13.03042522164786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m19!3e0!4m5!1s0x3a5267228393ebc5%3A0x156d21e24e011d17!2sCMBT%20Metro%20Station%2C%20Koyambedu%2C%20Chennai%2C%20Tamil%20Nadu!3m2!1d13.068546399999999!2d80.2038669!4m5!1s0x3a52674435481d51%3A0x522343be0e35985!2sAlandur%2C%20Metro%20Station%20Alandur%2C%20Alandur%2C%20Chennai%2C%20Tamil%20Nadu!3m2!1d13.004215499999999!2d80.20154819999999!4m5!1s0x3a5260a801f2052f%3A0xe83bd83ed133d069!2sMeenambakkam%20Metro%2C%20Chennai%20-%20Theni%20Highway%2C%20National%20Airports%20Authority%20Colony%2C%20Meenambakkam%2C%20Nandanvakkam%2C%20Tamil%20Nadu!3m2!1d12.987683299999999!2d80.17639989999999!5e0!3m2!1sen!2sin!4v1668937738690!5m2!1sen!2sin"
width="320" height="250" style="border:0;"  loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
<%
}
else{
%>
<iframe class="if" src="https://www.google.com/maps/embed?pb=!1m34!1m12!1m3!1d62191.768305089245!2d80.15938147378226!3d13.036593618528872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m19!3e0!4m5!1s0x3a52641b8071cb57%3A0x96be2fce408725be!2sThirumangalam%20Metro%20Station%2C%202nd%20Avenue%2C%20L%20Block%2C%20Kurinji%20Colony%2C%20Anna%20Nagar%2C%20Chennai%2C%20Tamil%20Nadu!3m2!1d13.0852626!2d80.201574!4m5!1s0x3a52674435481d51%3A0x522343be0e35985!2sAlandur%2C%20Metro%20Station%20Alandur%2C%20Alandur%2C%20Chennai%2C%20Tamil%20Nadu!3m2!1d13.004215499999999!2d80.20154819999999!4m5!1s0x3a5260a801f2052f%3A0xe83bd83ed133d069!2sMeenambakkam%20Metro%2C%20Chennai%20-%20Theni%20Highway%2C%20National%20Airports%20Authority%20Colony%2C%20Meenambakkam%2C%20Nandanvakkam%2C%20Tamil%20Nadu!3m2!1d12.987683299999999!2d80.17639989999999!5e0!3m2!1sen!2sin!4v1668942113114!5m2!1sen!2sin" 
width="320" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
<% 
}
%>
	<div class="state"><h3>You can't directly go in this route. Kindly follow this route.</h3></div>
	<div class="bo">
  <form action="Ticket_T2.jsp">
  <table class="tab">
        <thead>
          <tr>
            <th scope="col">Starts at</th>
            <th scope="col">Reaches by</th>
            <th scope="col">Price</th>
            <th scope="col">Choose</th>
          </tr>
        </thead>
        <tbody>
        <%
try{
	Connection con	= connect.getCon();
	Statement st=con.createStatement();%>
	<tr>
  		<td colspan="4"><b><%out.print(start);%> to <%out.print(destination); %></b></td>
 	</tr>
 	<%
	String sql="select * from chennai where f='"+start+"' and t='"+destination+"' order by f_time asc";
	String sql1="select * from chennai where f='"+destination+"' and t='"+fn+"' order by f_time asc";
	ResultSet rs =st.executeQuery(sql);
	while(rs.next())
	{
		
		%>
        <tr>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(3)%></td>
          <td>
                <input type="radio" name="choose" value="<%=rs.getString(5)%>"> 
                
              
          </td>
        </tr>
        
        <%
          		}%>
          		
         <tr>
  		<td colspan="4"><b><%out.print(destination);%> to <%out.print(fn); %></b></td>
 	</tr>
<%
	ResultSet rs1 =st.executeQuery(sql1);
	while(rs1.next())
	{
		
		%>
        <tr>
          <td><%=rs1.getString(4)%></td>
          <td><%=rs1.getString(5)%></td>
          <td><%=rs1.getString(3)%></td>
          <td>
                <input type="radio" name="choose_new" value="<%=rs1.getString(5)%>"> 
                
              
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
<span><button class="sub2" onclick="window.location='TamilNadu.jsp';">Cancel</button> </span>
	


      
</body>
</html>