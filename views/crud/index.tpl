<div class="">
	<!-- boutton nouvel enregistrement -->
	<div class="large-4 left">
		<a href="<?php echo WEBROOT.LOC_Name; ?>/create" class="btn-blue"><?php echo Title_Create; ?></a>
	</div>
	<!-- formulaire de recherche -->
	<div class="large-6 left">
		<div class="large-10 left">
			<form method="POST" action="<?php echo WEBROOT.LOC_Name; ?>/search">
				<input class="large-9" type="text" name="query" placeholder="Recherche" required>
				<input class="large-3 btn-blue" value="OK" type="submit">
			</form>
		</div>
	</div>
	<!-- selection affichage / page -->
	<?php $action = (isset($query)) ? WEBROOT.LOC_Name.'/search/'.$query : WEBROOT.LOC_Name.'/index'; ?>
	<div class="large-2 left">
		<form method="POST" action="<?php echo $action; ?>">
			<select name="size" onchange='this.form.submit()'>
				<option> Résultats par page </option>
				<option> 1 </option>
				<option> 5 </option>
				<option> 10 </option>
				<option> 15 </option>
				<option> 20 </option>
			</select>
		</form>
	</div>
</div>

<?php if(is_array($display['result'])): ?>  <!-- si resultat -->

<!-- affichage de tous les résultats -->
<div class="large-10 offset-1 left" style="overflow-y: scroll">
<table class="">
	<!-- head -->
	<thead>
		<tr>
			<?php $href = (isset($query)) ? WEBROOT.LOC_Name.'/search/'.$query : WEBROOT.LOC_Name.'/index'; ?>
			<?php foreach ($attribs as $key => $value) : ?>
				<th width="<?php echo $value['sizeCol'] ?>px"><a href="<?php echo $href; ?>/5-1/<?php echo ($order==$key) ? $key.'/1':$key.''; ?>"><?php echo $value['translate']; ?></a></th>
			<?php endforeach; ?>
		</tr>
	</thead>
	<!-- body -->
	<tbody>
		<?php foreach ($display['result'] as $value): ?>
		<tr onclick="document.location='<?php echo WEBROOT.LOC_Name.'/read/'.$value[$primary]; ?>'"> <!-- Début ligne -->
			<?php foreach ($display['result'][0] as $attr => $useless) : ?>
				<?php if (array_key_exists($attr, $attribs)) : ?>
					<td> <!-- Début cellule -->
						<?php
						//si la valeur et un tableau (lien vers la donnée liée)
							if(is_array($value[$attr])){	
								echo '<a href="'.WEBROOT.$value[$attr][0].'/read/'.$value[$attr][1].'">'.$value[$attr][2].'</a>';
							}else{
								//on affiche la donnée
								echo $value[$attr];
							}
						?>
					</td> <!-- Fin cellule -->
				<?php endif; ?>
			<?php endforeach; ?>
		</tr> <!-- Fin ligne -->
		<?php endforeach; ?>
	</tbody>
</table>
</div>

<div class="large-12 left">
	<?php echo $display['pagination']; ?>
</div>

<?php else: ?>  <!-- si aucun resultat -->

<div class="large-12 left">
	<?php echo $display['result']; ?>
	<!-- bouton retour -->
	<a href="<?php echo WEBROOT.LOC_Name; ?>" class="btn-lgrey">retour</a>
</div>

<?php endif; ?>