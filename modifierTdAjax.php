<?php
	include("init.php");
	
	$req = $bdd->prepare(' UPDATE todolist SET task=:task where id=' . $_GET['id']);
	$req->execute(array(
		'task' => $_POST["td_task"]
	));
	
	if (isset($_POST['tri'])) {
		header('Location:index.php?tri=' . $_POST['tri']);
	} else {
		header('Location:index.php');
	}
?>