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