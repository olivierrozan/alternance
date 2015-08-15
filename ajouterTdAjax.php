<?php
	include("init.php");
	
	$req = $bdd->prepare(' INSERT INTO todolist(task) VALUES(:task) ');
	$req->execute(array(
		'task' => $_POST["td_titre"]
	));
	
	if (isset($_POST['tri'])) {
		header('Location:index.php?tri=' . $_POST['tri']);
	} else {
		header('Location:index.php');
	}
?>