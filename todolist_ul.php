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