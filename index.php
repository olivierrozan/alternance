<?php 
include ("init.php");

function trier($tri, $order)
{
	$i = $order;
	
	$i++;
	if ($i % 2 == 0) {
		echo "index.php?tri=" . $tri . "&order=0";
	} else {
		echo "index.php?tri=" . $tri . "&order=1";
		$i = 0;
	}
}
?>

<!DOCTYPE html>

<html>
	
	<head>
		<title>Alternance</title>
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
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#" data-toggle="collapse" data-target="#tdlist">
						Liste entreprises
					</a>
				</div>
			</div>
		</nav>
		
		<div class="container">
			<div class="row">
				<?php /*require('todolist.php'); */?>
				<?php require('sheet.php'); ?>
			</div>		
		</div>
		
	</body>

</html>

