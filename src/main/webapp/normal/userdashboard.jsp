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

<style type="text/css">
.body-wrapper {
	display: flex;
	flex-direction: row;
	height: 90%;
}

.addcontent {
	width: 100%;
	height: 90%;
	background-color: red;
}

.headerandsidebar {
	display: flex;
	flex-direction: column;
}

.content {
	display: flex;
	flex-direction: column;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="body-wrapper">
		<jsp:include page="sidebar.jsp" />
		<div>hi</div>
	</div>





</body>

</html>
