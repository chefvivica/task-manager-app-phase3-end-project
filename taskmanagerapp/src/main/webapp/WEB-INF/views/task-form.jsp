<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>task form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous">
</script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$(".datepicker").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>

<style type="text/css">
body {
	margin: 20px;
	padding: 5px;	
	background-image: url("https://wallpaperaccess.com/full/753928.jpg");
}

h2 {
	text-shadow: 2px 2px #e6d4a3;
}
</style>

</head>

<body>
	<div class="container-lg">
		<h2>Create A New Task</h2>
	</div>
	<div class="container-md">
		<form:form method="post" modelAttribute="task">
			<form:hidden path="id" />
			<fieldset class="form-group">
				<form:label path="name">Name</form:label>
				<form:input path="name" type="text" class="form-control"
					required="required" />
				<form:errors path="name" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="description">Description</form:label>
				<form:textarea path="description" type="text" class="form-control"
					required="required" ></form:textarea>
				<form:errors path="description" cssClass="text-warning" />
			</fieldset><br>
			<fieldset class="form-group">
				<form:label path="startDate">Start Date</form:label>
				<form:input path="startDate" type="text" class="datepicker"
					required="required" />
				<form:errors path="startDate" cssClass="text-warning" />
			</fieldset><br>
			<fieldset class="form-group">
				<form:label path="endDate">End Date </form:label>
				<form:input path="endDate" type="text" class="datepicker"
					required="required" />
				<form:errors path="endDate" cssClass="text-warning" />
			</fieldset><br>
			<form:label path="severity">Severity</form:label>
			<select class="form-select" aria-label="Default select example"
				name="severity" required>
				<option value="High">High</option>
				<option value="Medium">Medium</option>
				<option value="Low">Low</option>
			</select>
			<br>

			<button type="submit" class="btn btn-primary">Submit</button>
			
		</form:form>
		<a href="/${username}/task-list"><button class="btn btn-secondary">Back</button></a>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>

</body>

</html>