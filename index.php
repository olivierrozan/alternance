<?php 
include ("init.php");
?>

<!DOCTYPE html>

<html>
	
	<head>
		<title>Alternance </title>
		<meta charset="utf-8">
		
		<link rel="stylesheet" style="text/css" href="dist/css/bootstrap.min.css">
		<link rel="stylesheet" style="text/css" href="dist/css/bootstrap-theme.min.css">
		<link rel="stylesheet" style="text/css" href="dist/css/dashboard.css">
		<link rel="stylesheet" style="text/css" href="jquery-ui/jquery-ui.css">
		<script src="dist/js/jquery.js"></script>
		<script src="jquery-ui/jquery-ui.js"></script>
		<script src="dist/js/bootstrap.js"></script>
		<script src="dist/js/script.js"></script>
	</head>
	
	<body>
		
		<div class="container-fluid">
			<div class="row">
				<?php require('todolist.php'); ?>
				<?php require('sheet.php'); ?>
			</div>		
		</div>
		
	</body>

</html>

