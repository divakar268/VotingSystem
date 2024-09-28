<%@page import="com.gov.votingsystem.entity.Candidate"%>
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
				<u>ALL CANDIDATE DETAILS</u>
			</h1>
			<br>
			<%
			List<Candidate> alist = (List) request.getAttribute("allCandidates");
			%>
			<table style="border: 2px solid;">
				<tr>
					<th>EmailId</th>
					<th>AadharNo</th>
					<th>Address</th>
					<th>Age</th>
					<th>CriminalBackground</th>
					<th>DOB</th>
					<th>FirstName</th>
					<th>Gender</th>
					<th>LastName</th>
					<th>MobileNo</th>
					<th>MonthlyIncome</th>
					<th>PanNo</th>
					<th>TotalProperty</th>
					<th>YearlyIncome</th>
					<th>Votes</th>
				</tr>
				<%
				for (Candidate can : alist) {
				%>
				<tr>
					<td><%=can.getEmail_id()%></td>
					<td><%=can.getAadhar_no()%></td>
					<td><%=can.getAddress()%></td>
					<td><%=can.getAge()%></td>
					<td><%=can.getCriminal_background()%></td>
					<td><%=can.getDob()%></td>
					<td><%=can.getFirst_name()%></td>
					<td><%=can.getGender()%></td>
					<td><%=can.getLast_name()%></td>
					<td><%=can.getMobile_no()%></td>
					<td><%=can.getMonthly_income()%></td>
					<td><%=can.getPan_no()%></td>
					<td><%=can.getTotal_property()%></td>
					<td><%=can.getYearly_income()%></td>
					<td><%=can.getVotes()%></td>

				</tr>
				<%
				}
				%>
			</table>
		</center>
	</div>
</body>
</html>