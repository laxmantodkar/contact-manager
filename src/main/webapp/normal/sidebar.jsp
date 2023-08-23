<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User home page</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">

<style type="text/css">
.sidebar {
	width: 15%;
	background-color: white;
	height: 100%;
}

.items {
	text-decoration: none;
	list-style: none;
	font-size: 25px;
	width: 100%;
}

.sidebar li:hover {
	background: grey;
}

.sidebar a {
	text-decoration: none;
	padding-left: 32px;
}

.sidebar ul {
	margin-top: 40px;
	padding: 0;
}

.items {
	width: 100%;
	margin-top: 30px;
}

.divider {
	height: 1px;
	width: 100%;
	background-color: grey;
	margin-top: 10px;
}

.crossbtn {
	position: relative;
	top: 10px;
	left: 80%;
	font-size: 30px;
}

.bar {
	font-size: 30px;
	margin-left: 20px;
}

.main {
	display: flex;
}

.active {
	background-color: red;
}
</style>
</head>
<body>

	<div class="sidebar" id="sidebar">
		<ul id="items-list">
			<li class="items" onclick="active()"><a href="/home"><i
					style="padding-right: 9px;" class="fas fa-home"></i>Home</a></li>
			<li class="items" onclick="active()"><a href="viewcontact"><i
					style="padding-right: 9px;" class="fas fa-id-card-alt"></i>View
					Contact</a></li>
			<li class="items"><a href="getaddcontactform"><i
					style="padding-right: 9px;" class="fas fa-pencil-alt"></i>Add
					Contact</a></li>
			<li class="items"><a href="viewprofile"><i
					style="padding-right: 9px;" class="fas fa-user-circle"></i>Your
					Profile</a></li>
			<li class="items"><a href="#"><i style="padding-right: 9px;"
					class="fas fa-cogs"></i>Setting</a></li>
			<li class="items"><a href="logout"><i
					style="padding-right: 9px;" class="fas fa-sign-out-alt"></i>Logout</a></li>
		</ul>
		<div class="divider"></div>
	</div>

	<script type="text/javascript">
	
	let litemList = document.getElementById("items-list")
		listItems.forEach((link) => {
			link.classList.add("active")
		})
	</script>
</body>

</html>
