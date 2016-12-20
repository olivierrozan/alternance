<?php
include("init.php");

$req = $bdd->prepare(' UPDATE sheet SET etat=:etat, date_modif=:date where id=' . $_GET['id']);
$req->execute(array(
	'etat' => "Relancé",
	'date' => date("Y-m-d")
));

$objet = "Candidature spontanée pour un contrat de professionnalisation en tant que Développeur Web";
$message = "Bonjour,

Je m'appelle Olivier ROZAN, et ayant obtenu un BTS Services Informatiques aux Organisations, je souhaiterais entrer en 3ème année dans une école d'informatique.

C'est pourquoi je vous envoie ma candidature pour un poste de Développeur Web, dans le cadre d'un contrat de professionnalisation.

Celui-ci se déroulera à partir d'Octobre 2016.

Veuillez trouver dans ce mail mon cv et ma lettre de motivation.

Dans l'attente d'une réponse positive de votre part.

Bien cordialement,

Olivier ROZAN
rozan.olivier@gmail.com
07.77.22.21.05";

/*mailto:san@antonio.net
?subject=Notre affaire
&body=Bonjour*/

if (isset($_POST['tri'])) {
	header('Location:index.php?tri=' . $_POST['tri']);
} else {
	header('Location:index.php');
}