<?php
	include("init.php");
	
	$req = $bdd->prepare('UPDATE sheet SET nom=:nom, adresse=:adresse, poste=:poste, etat=:etat, email=:email, date_modif=:date, commentaires=:com where id=' . $_GET['id']);
	$req->execute(array(
		'nom' => $_POST["m_nom"],
		'adresse' => $_POST["m_adresse"],
		'poste' => $_POST["m_poste"],
		'etat' => $_POST["m_etat"],
		'date' => date("Y-m-d"),
		'email' => $_POST["m_email"],
		'com' => $_POST['m_com']
	));
	
	if (isset($_POST['tri'])) {
		header('Location:index.php?tri=' . $_POST['tri']);
	} else {
		header('Location:index.php');
	}

	var_dump($_POST);
?>