<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User home page</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style type="text/css">
.body-wrapper {
	display: flex;
	flex-direction: row;
	width: 100%;
	height: 90%;
}

.dashmain {
	width: 80%;
	height: 80%;
	background-color: white;
	margin: 0 auto;
	margin-top: 50px;
}

.dashcontent {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	margin-top: 30px;
}

.dashButton {
	width: 80%;
	margin-left: 110px;
	background-color: blue;
	border: none;
	padding: 15px 0;
	color: white;
	font-size: 20px;
	border-radius: 30px;
}

 a:active {
	background: red;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="body-wrapper">
		<jsp:include page="sidebar.jsp" />
		<div class="dashmain">
			<div class="dashcontent">
				<div class="dashImage">
					<img alt=""
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"
						width="250px" height="250px">
				</div>
				<h3 class="dashHeading">Start adding your new contact</h3>
			</div>

			<button class="dashButton">
				<a style="color: white;" href="getaddcontactform">Add New Contact</a>
			</button>


		</div>
	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>

</html>
