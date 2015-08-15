<!-- balise de confirmation de rappel -->
<div class="modal fade" id='<?php echo 'td' . $data2['id']; ?>' tabindex="-1" role="dialog" 
	 aria-labelledby='<?php echo 'td' . $data2['id']; ?>' aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					Modifier <?php echo $data2['id']; ?>
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline" role="form" action="ModifierTdAjax.php?id='<?php echo $data2['id']; ?>'" method="POST">
					<div class="form-group">
						<label for="td_task">Nom:</label>
						<?php
						if (isset($_GET['tri'])) {
						?>
						<input type='hidden' name='tri' value='<?php echo $_GET['tri']; ?>'>
						<?php
						}
						?>
						<input type="text" class="form-control" id="td_task" name="td_task" value='<?php echo $data2['task']; ?>' placeholder="Task...">
					</div>
					
					<button type="submit" class="btn btn-default" value='<?php echo $data2['id']; ?>'>Valider</button>
				</form>
			</div>
			<!--<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Annuler
				</button>

				<a class="balise btn btn-primary" href="#" data-dismiss="modal" 
				   value='test'>
					Modifier
				</a>
			</div>-->
		</div>
	</div>
</div>