<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<style type="text/css">
html {
	font-family: 'Roboto', sans-serif;
}

body {
	width: 100vw;
	height: 100vh;
	padding: 0px;
	margin: 0px;
	background-color: #e6e6e6;
}

.main {
	max-width: 30%;
	min-height: 60%;
	display: flex;
	align-items: center;
	margin: 0 auto;
	
	
}

.submain {
	width: 80%;
	height: 80%;
	margin: 30px auto;
	background-color: white;
	border-radius: 10px;
	padding: 30px;
}

form {
	display: flex;
	flex-direction: column;
	gap: 10px;
}

form div {
	font-size: 25px;
}

.field {
	display: flex;
	flex-direction: column;
}

.field input {
	max-width: 100%;
	padding: 4px;
}

form div input {
	font-size: 22px;
}

.loginbtn {
	font-size: 25px;
	margin-left: 110px;
}

a {
	text-decoration: none;
}

.singup {
	display: flex;;
	flex-direction: row;
	margin-top: 10px;
	gap: 50px;
}

.singup button {
	border: none;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp" />
	<div class="main">

		<div class="submain">
			<div style="color: green; font-size: 20px;" id="msg"></div>
			<h1
				style="color: blue; width: 100%; display: flex; padding-bottom: 40px; align-items: center;">Please
				login here</h1>
			<div class="login">

				<form action="userlogin" method="post">
					<div class="field">
						<label>User Name</label> <input type="text" name="userName"
							id="userName" required>
					</div>
					<div class="field">
						<label>Pass Word</label> <input type="password" name="password"
							id="password"  required>
					</div>
					<div class="button">
						<div>
							<button class="loginbtn" type="submit">Login</button>
						</div>
					</div>
				</form>

			</div>
			<p>If have don't have account please singup</p>
			<div class="singup">
				<div class="">
					<button class="Forgotten">
						<a href="#" style="font-size: 18px;">Forgotten account? </a>
					</button>
				</div>
				<div>
					<button class="singupbtn">
						<a href="singup" style="font-size: 18px;">Sign up for User</a>
					</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		window.onload = function() {
			document.getElementById("msg").innerHTML = "${msg}";
		};
	</script>

</body>

</html>
