<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
.a {
	width: 600px;
	height: 400px;
	border: solid 2px black;
	background-color: yellow;
}

input {
	border-radius: 30%;
	height: 20px;
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<div class="a">
			<div
				style="width: 100%; height: 100px; background-color: pink; border: solid black;">
				<center>
					<h1>Project title</h1>
			</div>
			<center>
				<form>
					<a href="" style="float: right;">about</a>
					<lable>UserName:</lable>
					<input type="text" placeholder="Enter your User Name"
						name="user_name"> <br>
					<br>
					<lable>Password:</lable>
					<input type="password" placeholder="Enter your password"
						name="password"> <br>
					<br> <input type="submit" value="login">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
						type="submit" value="signup">
				</form>
			</center>
	</center>
	</div>
	</center>
</body>
</html>