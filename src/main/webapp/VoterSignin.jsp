<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signin</title>
<style type="text/css">
	.nav{
		background-color:black;
		color: white;
		display: block;
	}
	.nav ul{
	list-style: none;
	display: inline-flex;
	font-size: 20px;
	}
	.nav ul li{
	padding: 15px;
	}
	.nav ul li:hover {
	background-color: green;
	}
	#c,h2{
		color:red;
	}
	a{
	text-decoration: none;
	color: white;
	}
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="NewVoterRegistration.jsp">New Voter Registration</a></li>
			<li><a href="VoterSignin.jsp">Voter Signin</a></li>
			<li><a href="AdminSignin.jsp">Admin Signin</a></li>
			<li>About</li>
		</ul>
	</div>
	<br>
	<div style="border: solid 2px green;">
		<center>
			<h1>Signin</h1>
			<br>
			<form action="voterLogin">
				Email id:<input type="email" placeholder="Enter your email id" name="email_id">
				<br><br>
				Password:<input type="password" placeholder="Enter Your Password" name="password">
				<br><br>
				<input type="submit" value="Signin">
			</form>
			<br><br>
			<hr>
				<% String status = (String)request.getAttribute("loginStatus");
				if(status!=null)
				{
				%>
				<h2 style="color:red;"><%=status %></h2>
				<%
				}%>
		</center>
	</div>
</body>
</html>