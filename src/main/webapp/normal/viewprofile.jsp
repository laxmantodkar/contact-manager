<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Profile</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.body-wrapper {
	display: flex;
	flex-direction: row;
	height: 90%;
	overflow: sc
}

.singlemain {
	width: 70%;
	background-color: white;
	margin: 0 auto;
}

.image {
	width: 150px;
	height: 150px;
}

.content {
	width: 80%;
	display: flex;
	flex-direction: column;
	gap: 20px;
	margin: 40px auto;
}

.filed {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	font-size: 30px;
	color: black;
}

.singleImage {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="body-wrapper">
		<jsp:include page="sidebar.jsp" />
		<div class="singlemain">
			<div class="content">
				<div class="singleImage">
					<div>
						<img class="image" style="border-radius: 70px;" class="image"
							alt="" src="data:image/png;base64,${contact.imageName}">
						<div style="color: blue; font-size: 30px; padding-top: 10px;">${contact.name}</div>
					</div>
				</div>
				<hr style="border: 1px solid black; width: 100%;">
				<div class="singleId filed">
					<div>ID</div>
					<div>SCMUSER-${user.id}</div>
				</div>
				<div class="singleEmail filed">
					<div>Email</div>
					<div>${user.email}</div>
				</div>
				<div class="singlePhone filed">
					<div>Role</div>
					<div>${user.role}</div>
				</div>
				<div class="singleWork filed">
					<div>Account Active</div>
					<div>${user.enable}</div>
				</div>
				<div class="singleWork filed">
					<div>About You</div>
					<div>${user.about}</div>
				</div>
			</div>


		</div>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>