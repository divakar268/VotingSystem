<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
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
	.a{
	border: solid 2px green;
	}
	a{
	text-decoration: none;
	color: white;
	}
	#c{
	color: red;
	}
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="NewVoterRegistration.jsp">New Voter Registration</a></li>
			<li><a href="VoterSignin.jsp">Voter Signin</a></li>
			<li><a href="VoterSignin.jsp">Admin Signin</a></li>
			<li>About</li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center>
			<h1>New Voter Registration</h1>
			<br>
			<form action="signup">
			<lable>First Name:</lable><sup id="c">*</sup>
					<input type="text" placeholder="Enter your First Name"
						name="first_name" required="required"> <br>
					<br>
					<lable>Last Name:</lable>
					<input type="text" placeholder="Enter your Last Name"
						name="last_name"> <br>
					<br>
					<lable>DOB:</lable>
					<input type="date" placeholder="Enter your DateOfBirth" name="dob">
					<br>
					<br>
					<lable>Gender:<sup id="c">*</sup></lable>
					<input type="radio" name="gender" value="male" required="required">Male <input
						type="radio" name="gender" value="female" required="required">Female <br>
					<br>
					<lable>AadharNo:<sup id="c">*</sup></lable>
					<input type="number" placeholder="Enter your Aadhar No "
						name="aadhar_no" required="required">   <br>
					<br>
					<lable>Pan No:</lable>
					<input type="text" placeholder="Enter your Pan No" name="pan_no">
					<br>
					<br>
					<lable id="c">Email Id:</lable>
					<input type="email" placeholder="Enter your Email Id"
						name="email_id" required="required"> <br>
					<br>
					<lable>Phone No:</lable>
					<input type="number" placeholder="Enter your phone no"
						name="mobile_no"> <br>
					<br>
					<lable>Address:</lable>
					<input type="text" placeholder="Enter your Address" name="address">
					<br>
					<br>
			User Name:<input type="text" placeholder="Enter Your Full Name" name="user_name" required="required">
			<br><br>
			Password:<input type="password" placeholder="Enter your Password" name="password" required="required">
			<br><br>
			Id:<input type="text" placeholder="Enter the idNumber " name="id">
			<br><br>
			<input type="submit" value="Signup">
			</form>
			<br><br>
			<% 
				  String msg=(String)request.getAttribute("message");
                    if(msg!=null)
                     {
                 %>
				<h2 style="color: green;"><%=msg%></h2>
				<%
                     }
                     %>
		</center>
	</div>
</body>
</html>