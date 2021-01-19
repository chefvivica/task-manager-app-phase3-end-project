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

<title>registration page</title>
<style type="text/css">
body {
	margin-top: 30px;
	padding: 15px;
	background-image: url("https://wallpaperaccess.com/full/753928.jpg");
}

#registration{
	margin-left: 65px;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<div id="registration">
			<h1>Registration</h1>
		</div><hr>
		<div class="container-md">
			<form method="post" modelAttribute="user">

				<div class="mb-3">
					<label for="email" class="form-label">Email address</label> <input
						type="email" class="form-control" name="email" required="required">
				</div>
				<div class="mb-3">
					<label for="username" class="form-label">User Name</label> <input
						type="text" class="form-control" name="username"
						required="required">

				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password</label> <input
						type="password" class="form-control" name="password"
						required="required">
				</div>

				<button type="submit" class="btn btn-primary">Sign up</button>
			</form>
		</div>
	</div>
</body>

</html>