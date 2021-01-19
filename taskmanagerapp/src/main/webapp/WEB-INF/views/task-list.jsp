<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>task-list</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	margin: 20px;
	padding: 5px;
	background-image: url("https://wallpaperaccess.com/full/753928.jpg");
}
</style>
</head>

<body>
	<div class="d-grid gap-3">
		<div class="container-xl">
			<div class="row">
				<div class="col">
					<h3>${username}'s Tasks:</h3>
				</div>
				<div class="col">
					<a href="/${username}/add-task"><button class="btn btn-primary"
							type="button">Add A New Task</button></a>
				</div>
				<div class="col">
					<a href="/index"><button class="btn btn-secondary"
							type="button">Back</button></a>
				</div>
			</div>
			<hr>
			<div class="container-lg">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Name</th>
							<th>Description</th>
							<th>Start Date d/m/y</th>
							<th>End Date d/m/y</th>
							<th>Severity</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${tasks}" var="task">
							<tr>
								<td>${task.name}</td>
								<td>${task.description}</td>
								<td><fmt:formatDate value="${task.startDate}"
										pattern="dd/MM/yyyy" /></td>
								<td><fmt:formatDate value="${task.endDate}"
										pattern="dd/MM/yyyy" /></td>
								<td>${task.severity}</td>
								<td><a type="button" class="btn btn-info"
									href="/${username}/update-task/${task.id}">Update</a></td>
								<td><a type="button" class="btn btn-danger"
									href="/${username}/delete-task/${task.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>

</html>