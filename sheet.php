<div class="col-sm-12"><!-- col-sm-9 col-sm-offset-3 col-md-10 main col-md-offset-2 -->
	<h2 class="sub-header">
		Alternance Status
		<a href="index.php"><button class="btn btn-sm btn-info" role="button">Voir Tout</button></a>
		<span class="dropdown">
			<button class="btn btn-sm btn-info dropdown-toggle" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" href="#">Afficher seulement</button>
			<ul class="dropdown-menu">
				<li><a href="index.php?only=0">Attente</a></li>
				<li><a href="index.php?only=1">Relancé</a></li>
				<li><a href="index.php?only=2">Entretien</a></li>
				<li><a href="index.php?only=3">Refusé</a></li>
			</ul>
			
		</span>
		
		<span><?php echo $count . " lignes au total"; ?></span>
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
					<option value="Attente">Attente</option>
					<option value="Relancé">Relancé</option>
					<option value="Entretien">Entretien</option>
					<option value="Refusé">Refusé</option>
				</select>
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="mail" class="form-control" id="email" name="email" placeholder="email">
			</div>
			<div class="form-group">
				<label for="com">Commentaires:</label>
				<input type="text" class="form-control" id="com" name="com" placeholder="commentaires">
			</div>
			
			<button type="submit" class="btn btn-default">Valider</button>
		</form>
	</div>
	
	<table class="table table-striped">
		<tr>
			<th><a id='triid' href="
			<?php
			if (isset($_GET['tri']) && isset($_GET['order'])) {
				trier("id", $_GET['order']);
			} else {
				echo "index.php?tri=id&order=1";
			}
			?>
			"><span id='col_id' class="glyphicon glyphicon-chevron-down"></span>Id</a></th>
			
			<th><a id='trinom' href="
			<?php
			if (isset($_GET['tri']) && isset($_GET['order'])) {
				trier("nom", $_GET['order']);
			} else {
				echo "index.php?tri=nom&order=1";
			}
			?>
			"><span id='col_nom' class="glyphicon glyphicon-chevron-up"></span>Nom</a></th>
			
			<th><a id='triadresse' href="
			<?php
			if (isset($_GET['tri']) && isset($_GET['order'])) {
				trier("adresse", $_GET['order']);
			} else {
				echo "index.php?tri=adresse&order=1";
			}
			?>
			"><span id='col_adr' class="glyphicon glyphicon-chevron-up"></span>Adresse</a></th>
			
			<th><a id='triposte' href="
			<?php
			if (isset($_GET['tri']) && isset($_GET['order'])) {
				trier("poste", $_GET['order']);
			} else {
				echo "index.php?tri=poste&order=1";
			}
			?>
			"><span id='col_poste' class="glyphicon glyphicon-chevron-up"></span>Poste</a></th>
			
			<th><a id='trietat' href="
			<?php
			if (isset($_GET['tri']) && isset($_GET['order'])) {
				trier("etat", $_GET['order']);
			} else {
				echo "index.php?tri=etat&order=1";
			}
			?>
			"><span id='col_etat' class="glyphicon glyphicon-chevron-up"></span>Etat</a></th>
			
			<th><a id='tridate' href="
			<?php
			if (isset($_GET['tri']) && isset($_GET['order'])) {
				trier("date_modif", $_GET['order']);
			} else {
				echo "index.php?tri=date_modif&order=1";
			}
			?>
			"><span id='col_date' class="glyphicon glyphicon-chevron-up"></span>Date Modification</a></th>
			
			<th>Email</th>
			<th>Commentaires</th>
			<th>Prochaine Relance</th>
			<th></th>
			<!--<th></th>-->
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
				<td><?php echo $data['email']; ?></td>
				<td><?php echo $data['commentaires']; ?></td>
				<td>
					<?php 
					$datetime1 = new DateTime($data['date_modif']);
					$datetime2 = new DateTime(date('Y-m-d'));
					$interval = $datetime1->diff($datetime2);
					
					if ($interval->days < 10) {
						$delai = 10 - $interval->days;
						echo "Dans " . $delai . " jours";
					} else {
						echo '<a class="btn btn-sm btn-primary" href="relancerAjax.php?id=' . $data["id"] . '"><span class="glyphicon glyphicon-flash"></span>
						Relancer 
						</a>';
					}
					?>
				</td>
				<td>
					<a class="btn btn-sm btn-warning" data-toggle="modal" data-target="<?php echo '#' . $data['id']; ?>">
						<span class="glyphicon glyphicon-pencil"></span>
						Modifier
					</a>
				</td>
				<!--<td>
					<a class="btn btn-sm btn-danger" href="supprimerAjax.php?id='<?php echo $data['id']; ?>'">
						<?php
						//if (isset($_GET['tri'])) {
						?>
						<input type='hidden' name='tri' value='<?php //echo $_GET['tri']; ?>'>
						<?php
						//}
						?>
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
						Supprimer
					</a>
				</td>-->
			</tr>
		<?php
		}
		?>
		
	</table>
	
</div>