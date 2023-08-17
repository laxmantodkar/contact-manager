<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Contact</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.body-wrapper {
	display: flex;
	flex-direction: row;
	height: 90%;
	overflow: sc
}

.table {
	width: 70%;
	margin: 0 auto;
}

.viewHeading {
	text-align: center;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	background-color: white;
}

td, th {
	border: 1px solid #dddddd;
	text-align: center;
	padding: 18px;
}

.image {
	width: 55px;
	height: 55px;
}

.model {
	width: 30%;
	height: 50%;
	background-color: white;
	width: 30%;
	position: absolute;
	top: 20%;
	left: 32%;
	border-radius: 10px;
}

.edit {
	background-color: blue;
	color: white; padding : 6px 20px;
	border-radius: 10px;
	padding: 6px 23px;
}

.delete {
	background-color: red;
	color: white;
	padding: 6px 20px;
	border-radius: 10px;
}
</style>

</head>

<body>
	<jsp:include page="header.jsp" />
	<div class="body-wrapper">
		<jsp:include page="sidebar.jsp" />

		<div class="table">
			<h2 class="viewHeading">View Contact</h2>
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Profile</th>
						<th>Name</th>
						<th>Mobile</th>
						<th>Email</th>
						<th>Work</th>
						<th>Delete</th>
						<th>Edit</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${contact}" var="contact">
						<tr>
							<td>SCMUSER-${contact.cId}</td>
							<c:if test="${contact.imageName!=null}">


								<td style="padding: 0px;">
									<button onclick="diologbox('${contact.imageName}')"
										style="border: none; border-radius: 100px;" type="button"
										data-toggle="modal" data-target="#myModal">
										<img style="border-radius: 70px;" class="image" alt=""
											src="data:image/png;base64,${contact.imageName}">
									</button>

								</td>
							</c:if>
							<c:if test="${contact.imageName==null}">
								<td></td>
							</c:if>
							<td>${contact.name}</td>
							<td>${contact.phone}</td>
							<td> <a href="viewsinglecontact/${contact.cId}"> ${contact.email}</a></td>
							<td>${contact.work}</td>
							<td><a class="delete" href="#">Delete</a>
							</th>
							<th><a class="edit" href="#">Edit</a></th>
						</tr>
					</c:forEach>


				</tbody>

			</table>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade model" id="myModal" role="dialog">
		<div id="myImage">
			<span style="font-size: 30px;" class="close" data-dismiss="modal">&times;</span>

		</div>

	</div>
	<script type="text/javascript">
		function diologbox(image) {

			let img = document.getElementById('myImage');
			let newImage = document.createElement('img');
			newImage.src = "data:image/png;base64," + image;
			newImage.setAttribute('id', 'myImage');
			newImage.setAttribute('width', '500px');
			newImage.setAttribute('height', '339.5px');
			img.appendChild(newImage);
		}
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>