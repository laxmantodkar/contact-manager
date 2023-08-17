<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.body-wrapper {
	display: flex;
	flex-direction: row;
	height: 90%;
	overflow: sc
}

.addContact {
	width: 50%;
	margin: 0 auto;
	background-color: white;
	border-radius: 14px;
}

.addheading {
	color: blue;;
	text-align: center;
}

.addform form {
	display: flex;
	flex-direction: column;
	gap: 30px;
}

.addform {
	padding-left: 40px;
}

.addform form input {
	width: 80%;
	padding: 7px;
	font-size: 20px;
}

.icon {
	border: 1px solid black;
	font-size: 25px;
	background-color: #f1f1f1;
	padding: 5px;
}

.textarea {
	max-width: 85%;
	min-width: 85%;
	padding: 7px;
	font-size: 20px;
}

.field {
	display: flex;
	flex-direction: row;
}

.add-button {
	padding: 7px;
	font-size: 20px;
	position: relative;
	left: 40%
}

#msg {
	color: green;
    font-size: 25px;
    text-align: center;
    margin-bottom: 10px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="body-wrapper">
		<jsp:include page="sidebar.jsp" />
		<div class="addContact">
			<h1 class="addheading">Add Contact</h1>
			<div id="msg"></div>
			<div class="addform">
				<form action="savecontact" method="post"
					enctype="multipart/form-data">
					<div class="field">
						<span class="icon"><i class="fa fa-plus"></i></span> <input
							placeholder="Enter Name here" name="name" id="name">
					</div>
					<div class="field">
						<span class="icon"><i class="fas fa-user-alt"></i></span> <input
							placeholder="Enter Name nick here" name="secondName"
							id="secondName">
					</div>
					<div class="field">
						<span class="icon"><i class="fa fa-phone"></i></span> <input
							placeholder="Enter Phone Number here" name="phone" id="phone">
					</div>
					<div class="field">
						<span class="icon">@</span> <input placeholder="Enter Email here"
							name="email" id="email">
					</div>
					<div class="field">
						<span class="icon"><i class="fa fa-briefcase"></i></span> <input
							placeholder="Enter work here" name="work" id="work">
					</div>

					<div class="field">

						<textarea placeholder="Enter Contact description here"
							class="textarea" name="description" rows="" cols=""></textarea>
					</div>
					<div class="field">
						<input type="file" name="image" placeholder="Enter work here">
					</div>
					<div>
						<button class="add-button" type="submit">Submit</button>

					</div>
				</form>
			</div>


		</div>
	</div>
	<script>
		window.onload = function msg() {
			document.getElementById("msg").innerHTML = "${msg}";

		}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>