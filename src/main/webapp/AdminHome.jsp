<%@page import="com.gov.votingsystem.entity.Candidate"%>
<%@page import="com.gov.votingsystem.entity.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
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
	a{
	text-decoration: none;
	color: white;
	}
</style>
</head>
<body>
<%
Admin add = (Admin)request.getAttribute("admin");
%>
	<div class="nav">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li>Welcome <%= add.getUser_name() %></li>
			<li><a href="viewAllAdmins">View Admins</a></li>
			<li><a href="viewAllVoters">View Voters</a></li>
			<li><a href="viewAllCandidates">View Candidates</a></li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green;">
		<center>
			<h1>Admin Dashbord</h1>
			<br>
			<%
				List<Candidate> ls = (List) request.getAttribute("listOfCan");
				for (Candidate can : ls) {
				%>
				<h2><%=can.getFirst_name()%>
					: Total Votes =
					<%=can.getVotes()%></h2>
				<%
				}
				%>
		</center>
	</div>
</body>
</html>