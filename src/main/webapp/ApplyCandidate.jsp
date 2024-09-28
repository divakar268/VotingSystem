<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.nav {
	background-color: black;
	color: white;
	display: block;
}

.nav ul {
	list-style: none;
	display: inline-flex;
	font-size: 20px;
}

.nav ul li {
	padding: 15px;
}

.nav ul li:hover {
	background-color: green;
}

.a {
	border: solid 2px green;
	width: 100%;
	height: 700px;
}

.user {
	width: 50%;
	float: left;
}

.options {
	width: 50%;
	float: left;
}

a {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="">Apply For Candidate</a></li>
			<li><a href="VoterSignin.jsp">Logout</a></li>
		</ul>
	</div><br>
	<div class="a">
		<center>
			<h1>Candidate Dashboard</h1>
			<form action="addCandidate">
				<lable>First Name:</lable>
				<input type="text" placeholder="Enter your First Name"
					name="first_name"> <br> <br>
				<lable>Last Name:</lable>
				<input type="text" placeholder="Enter your Last Name"
					name="last_name"> <br> <br>
				<lable>DOB:</lable>
				<input type="date" placeholder="Enter your DateOfBirth" name="dob">
				<br> <br>
				<lable>Gender:</lable>
				<input type="radio" name="gender" value="male">Male <input
					type="radio" name="gender" value="female">Female <br>
				<br>
				<lable>Age:</lable>
				<input type="text" placeholder="Enter your Age " name="age">
				<br> <br>
				<lable>AadharNo:</lable>
				<input type="number" placeholder="Enter your Aadhar No "
					name="aadhar_no"> <br> <br>
				<lable>Pan No:</lable>
				<input type="text" placeholder="Enter your Pan No" name="pan_no">
				<br> <br>
				<lable>Email Id:</lable>
				<input type="email" placeholder="Enter your Email Id" name="email_id">
				<br> <br>
				<lable>Phone No:</lable>
				<input type="number" placeholder="Enter your phone no"
					name="mobile_no"> <br> <br>
				<lable>Address:</lable>
				<input type="text" placeholder="Enter your Address" name="address">
				<br> <br>
				<lable>MonthlyIncome:</lable>
				<input type="text" placeholder="Enter your Monthly income"
					name="monthly_income"> <br> <br>
				<lable>YearlyIncome:</lable>
				<input type="text" placeholder="Enter your YearlyIncome"
					name="yearly_income"> <br> <br> 
				<lable>Total Property:</lable>
				<input type="text" placeholder="Enter your Total property"
					name="total_property"> <br> <br>
				<lable>Criminal Background:</lable>
				<input type="radio" name="criminal_background" value="yes">Yes
				<input type="radio" name="criminal_background" value="no">No
				<br> <br> <input type="submit" value="Apply">&nbsp;&nbsp;&nbsp;
				<input type="reset" value="Cancel">
				</form>
				<%
				String status =(String)request.getAttribute("status");
				if(status!=null)
				{
					boolean check=(Boolean)request.getAttribute("check");
					if(check)
					{
				%>
				<h2 style="color:green;"><%= status %></h2>
				<%
					}
					else
					{
				%>
				<h2 style="color:red;"><%= status %></h2>
				<%
					}
				}
				%>
				
		</center>
	</div>
	


</body>
</html>