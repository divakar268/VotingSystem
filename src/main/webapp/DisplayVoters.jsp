
<%@page import="com.gov.votingsystem.entity.Voter"%>
<%@page import="java.util.List"%>
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
			<li><a href="viewAllAdmins">View Admins</a></li>
			<li><a href="viewAllVoters">View Voters</a></li>
			<li><a href="viewAllCandidates">View Candidates</a></li>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<div style="border: 2px solid green;">
		<center>
			<h1>
				<u>ALL VOTERS DETAILS</u>
			</h1>

			<br>
			<%
			List<Voter> vlist = (List) request.getAttribute("allVoters");
			%>
			<table style="border: 2px solid;">
				<tr>
					<th>EmailId</th>
					<th>AadharNo</th>
					<th>Address</th>
					<th>DOB</th>
					<th>FirstName</th>
					<th>Gender</th>
					<th>Id</th>
					<th>LastName</th>
					<th>MobileNo</th>
					<th>PanNo</th>
					<th>Password</th>
					<th>Status</th>
					<th>UserName</th>

				</tr>


				<%
				for (Voter vote : vlist) {
				%>

				<tr>
					<td><%=vote.getEmail_id()%></td>
					<td><%=vote.getAadhar_no()%></td>
					<td><%=vote.getAddress()%></td>
					<td><%=vote.getDob()%></td>
					<td><%=vote.getFirst_name()%></td>
					<td><%=vote.getGender()%></td>
					<td><%=vote.getId()%></td>
					<td><%=vote.getLast_name()%></td>
					<td><%=vote.getMobile_no()%></td>
					<td><%=vote.getPan_no()%></td>
					<td><%=vote.getPassword()%></td>
					<td><%=vote.getStatus()%></td>
					<td><%=vote.getUser_name()%></td>
					
					<form action="del">
					<td><input type="radio" name="email_id" value="<%=vote.getEmail_id() %>">
						<input type="image" src="delete.jpg" alt="Submit" width="25"
						height="25"> <%
 String s = (String) request.getAttribute("status");
 if (s != null) {
 %>
						<h1 style="color: blue"><%=s%></h1> <%
 }
 %>

						</form></td>
					
					<%
					}
					%>


				</tr>

			</table>
		</center>
	</div>
</body>
</html>