<?php
	include("init.php");
	
	$req = $bdd->prepare(' UPDATE sheet SET etat=:etat, date_modif=:date where id=' . $_GET['id']);
	$req->execute(array(
		'etat' => "Relancé",
		'date' => date("Y-m-d")
	));
	
	if (isset($_POST['tri'])) {
		header('Location:index.php?tri=' . $_POST['tri']);
	} else {
		header('Location:index.php');
	}
?>