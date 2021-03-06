<html lang="en">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>welcome page</title>
<style type="text/css">
body {
	margin-top: 30px;
	padding: 15px;
	background-image: url("https://wallpaperaccess.com/full/753928.jpg");
}

a {
	color: #919da1;
}
</style>
</head>

<body>


	<div class="container-fluid">
		<div>
			<h1>welcome ${username}</h1>
		</div>
		<hr>
		<ul class="list-group">
			<li class="list-group-item list-group-item-primary"><a
				href="/${username}/task-list"><h4>Veiw Your Tasks List</h4></a></li>
			<li class="list-group-item list-group-item-danger"><a
				href="/swagger-ui.html"><h4>Api Documentation</h4></a></li>
			<li class="list-group-item list-group-item-warning"><a
				href="/logout"><h4>Back</h4></a></li>
		</ul>
		
		

	</div>

</body>

</html>