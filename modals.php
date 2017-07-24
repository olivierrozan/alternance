<!-- balise de confirmation de rappel -->
<div class="modal fade" id='<?php echo $data['id']; ?>' tabindex="-1" role="dialog" 
	 aria-labelledby='<?php echo $data['id']; ?>' aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					Modifier <?php echo $data['id']; ?> :  "<?php echo $data['etat']; ?>"
				</h4>
			</div>
			<div class="modal-body">
				<form class="form-inline" role="form" action="ModifierAjax.php?id='<?php echo $data['id']; ?>'" method="POST">
					<div class="form-group">
						<label for="m_nom">Nom:</label>
						<?php
						if (isset($_GET['tri'])) {
						?>
						<input type='hidden' name='tri' value='<?php echo $_GET['tri']; ?>'>
						<?php
						}
						?>
						<input type="text" class="form-control" id="m_nom" name="m_nom" value='<?php echo $data['nom']; ?>' placeholder="Nom">
					</div>
					<div class="form-group">
						<label for="m_adresse">Adresse:</label>
						<input type="text" class="form-control" id="m_adresse" name="m_adresse" value='<?php echo $data['adresse']; ?>' placeholder="Adresse">
					</div>
					<div class="form-group">
						<label for="m_poste">Poste:</label>
						<input type="text" class="form-control" id="m_poste" name="m_poste" value='<?php echo $data['poste']; ?>' placeholder="poste">
					</div>
					<div class="form-group">
						<label for="m_etat">Etat:</label>
						<select class="form-control" id="m_etat" name="m_etat" value='<?php echo $data['etat']; ?>'>
							<option value="Attente" <?php if ($data['etat'] === "Attente") echo "selected"; ?>>Attente</option>
							<option value="Relancé" <?php if ($data['etat'] === "Relancé") echo "selected"; ?>>Relancé</option>
							<option value="Entretien" <?php if ($data['etat'] === "Entretien") echo "selected"; ?>>Entretien</option>
							<option value="Refusé" <?php if ($data['etat'] === "Refusé") echo "selected"; ?>>Refusé</option>
						</select>
					</div>
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="mail" class="form-control" id="m_email" name="m_email" value='<?php echo $data['email']; ?>' placeholder="email">
					</div>
					<div class="form-group">
						<label for="m_com">Commentaires:</label>
						<input type="text" class="form-control" id="m_com" name="m_com" value='<?php echo $data['commentaires']; ?>' placeholder="commentaires">
					</div>
					
					<button type="submit" class="btn btn-default" value='<?php echo $data['id']; ?>'>Valider</button>
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