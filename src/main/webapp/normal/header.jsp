<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title></title>

<style>
body {
	margin: 0;
	padding: 0;
	width: 100vw;
	height: 100vh;
	background-color: #f1f1f1;
}

.header {
	width: 100%;
	height: 10%;
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	display: flex;
	align-items: center;
	background-color: #cfd5d3;
}

.field ul {
	display: flex;
	flex-direction: row;
	gap: 30px;
	margin-right: 50px;
}

.item {
	list-style: none;
	font-size: 20px;
}

.heading {
	font-size: 20px;
	margin-left: 50px;
}

.field a {
	text-decoration: none;
}
</style>
</head>
<body>
	<header class="header">
		<p class="heading">SMAART CONTACT MANAGER</p>
		<div class="field">
			<ul>
				<li class="item"><a href="#">Home</a></li>
				<li class="item"><a href="#">${user.name}</a></li>
				<li class="item"><a href="logout">Logout</a></li>


			</ul>
		</div>
	</header>
</body>


</html>