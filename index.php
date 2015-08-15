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
				<div class="col-sm-3 col-md-2 sidebar">
					<h3>
						Todo list
						<button class="btn btn-sm btn-success" role="button" data-toggle="collapse" data-target="#add2">
							<span id="td" class="glyphicon glyphicon-plus"></span>
							Ajouter
						</button>
					</h3>
					
					<div id="add2" class="collapse out">
						<form class="form-inline" role="form" action="ajouterTdAjax.php" method="POST">
							<div class="form-group">
								<label for="td_titre">Nom:</label>
								<?php
								if (isset($_GET['tri'])) {
								?>
								<input type='hidden' name='tri' value='<?php echo $_GET['tri']; ?>'>
								<?php
								}
								?>
								<input type="text" class="form-control" id="td_titre" name="td_titre" placeholder="Titre">
							</div>

							<button type="submit" class="btn btn-default">Valider</button>
						</form>
					</div>
					
					<ul class="nav nav-sidebar">
						<?php
						foreach ($donnees2 as $data2) {
						include ("modalsTd.php");
						?>
							<li>
								<a href="#">
									<?php echo $data2['task']; ?>
									<span class="sr-only"></span>
								</a>
							</li>
							
							<div style="margin-left:20px;">
								<a id="<?php echo 'm' . $data2['id']; ?>" class="btn btn-xs btn-warning" data-toggle="modal" data-target="<?php echo '#td' . $data2['id']; ?>">
									<span class="glyphicon glyphicon-pencil"></span>
									Modifier
								</a>
								
								<a class="btn btn-xs btn-danger" href="supprimerTdAjax.php?id='<?php echo $data2['id']; ?>'">
									<?php
									if (isset($_GET['tri'])) {
									?>
									<input type='hidden' name='tri' value='<?php echo $_GET['tri']; ?>'>
									<?php
									}
									?>
									<span class="glyphicon glyphicon-remove"></span>
									Supprimer
								</a>
							</div>
						<?php
						}
						?>
					</ul>
				</div>
				
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<h2 class="sub-header">
						Alternance Status
						<button class="btn btn-sm btn-info" role="button">Voir Tout</button>
						<span class="dropdown">
							<button class="btn btn-sm btn-info dropdown-toggle" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" href="#">Trier Par : </button>
							<ul class="dropdown-menu">
								<li><a href="index.php?tri=id">Id</a></li>
								<li><a href="index.php?tri=nom">Nom</a></li>
								<li><a href="index.php?tri=etat">Etat</a></li>
								<li><a href="index.php?tri=date_modif">Date</a></li>
							</ul>
						</span>
					</h2>
					
					<p>
						<button class="btn btn-lg btn-success" role="button" data-toggle="collapse" data-target="#add">
							<span id="a" class="glyphicon glyphicon-plus"></span>
							Ajouter
						</button>
					</p>
					
					<div id="add" class="collapse out">
						<form class="form-inline" role="form" action="ajouterAjax.php" method="POST">
							<div class="form-group">
								<label for="nom">Nom:</label>
								<?php
								if (isset($_GET['tri'])) {
								?>
								<input type='hidden' name='tri' value='<?php echo $_GET['tri']; ?>'>
								<?php
								}
								?>
								<input type="text" class="form-control" id="nom" name="nom" placeholder="Nom">
							</div>
							<div class="form-group">
								<label for="adresse">Adresse:</label>
								<input type="text" class="form-control" id="adresse" name="adresse" placeholder="Adresse">
							</div>
							<div class="form-group">
								<label for="poste">Poste:</label>
								<input type="text" class="form-control" id="poste" name="poste" placeholder="poste">
							</div>
							<div class="form-group">
								<label for="etat">Etat:</label>
								<select class="form-control" id="etat" name="etat">
									<option value="Attente">En attente</option>
									<option value="Relancé">Relancé</option>
									<option value="Entretien">Entretien</option>
									<option value="Refusé">Refusé</option>
								</select>
							</div>
							<div class="form-group">
								<label for="com">Commentaires:</label>
								<input type="text" class="form-control" id="com" name="com" placeholder="commentaires">
							</div>
							
							<button type="submit" class="btn btn-default">Valider</button>
						</form>
					</div>
					
					<p id="confirm"></p>
					
					<table class="table">
						<tr>
							<th><a id='triid' href="#"><span id='col_id' class="glyphicon glyphicon-chevron-down"></span>Id</a></th>
							<th><a id='trinom' href="#"><span id='col_nom' class="glyphicon glyphicon-chevron-up"></span>Nom</a></th>
							<th><a id='triadresse' href="#"><span id='col_adr' class="glyphicon glyphicon-chevron-up"></span>Adresse</a></th>
							<th><a id='triposte' href="#"><span id='col_poste' class="glyphicon glyphicon-chevron-up"></span>Poste</a></th>
							<th><a id='trietat' href="#"><span id='col_etat' class="glyphicon glyphicon-chevron-up"></span>Etat</a></th>
							<th><a id='tridate' href="#"><span id='col_date' class="glyphicon glyphicon-chevron-up"></span>Date Modification</a></th>
							<th>Commentaires</th>
							<th></th>
							<th></th>
						</tr>
						
						<?php
						foreach ($donnees as $data) {
							include ("modals.php");
						?>
							<tr class="trs">
								<td><?php echo $data['id']; ?></td>
								<td><?php echo $data['nom']; ?></td>
								<td><?php echo $data['adresse']; ?></td>
								<td><?php echo $data['poste']; ?></td>
								<td class="tds"><?php echo $data['etat']; ?></td>
								<td><?php echo utf8_encode(strftime("%d %B %Y", strtotime($data['date_modif']))); ?></td>
								<td><?php echo $data['commentaires']; ?></td>
								<td>
									<a class="btn btn-sm btn-warning" data-toggle="modal" data-target="<?php echo '#' . $data['id']; ?>">
										<span class="glyphicon glyphicon-pencil"></span>
										Modifier
									</a>
								</td>
								<td>
									<a class="btn btn-sm btn-danger" href="supprimerAjax.php?id='<?php echo $data['id']; ?>'">
										<?php
										if (isset($_GET['tri'])) {
										?>
										<input type='hidden' name='tri' value='<?php echo $_GET['tri']; ?>'>
										<?php
										}
										?>
										<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										Supprimer
									</a>
								</td>
							</tr>
						<?php
						}
						?>
						
					</table>
					
				</div>
			</div>		
		</div>
		
	</body>

</html>

