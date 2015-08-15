<?php
	include("init.php");
	$req = $bdd->query('delete from sheet where id=' . $_GET['id']);
	
	if (isset($_POST['tri'])) {
		header('Location:index.php?tri=' . $_POST['tri']);
	} else {
		header('Location:index.php');
	}
?>