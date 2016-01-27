<div class="large-12 left text-center">
	<?php echo @$msg; ?>
</div>

<script src="<?php echo JS.'updateList.js'; ?>"></script>

<div class="large-2 left">
	<!-- bouton retour -->
	<a href="<?php echo WEBROOT.LOC_Name ?>/read/<?php echo $datas['id'] ?>" class="btn-lgrey">retour</a>
</div>

<div class="large-10 left">
	<!-- titre -->
	<h3><?php echo Title_Update ?></h3>
</div>

<!-- formulaire -->
<!-- <form action="<?php echo WEBROOT.LOC_Name ?>/update/<?php echo $datas['id'] ?>" method="POST"> -->
<form action="#" method="POST">
	<?php foreach ($attribs as $key => $value) : ?>
		<!-- LIGNE -->
		<div class="large-12 left">
		<?php if (isset($value['form'])) : ?>
			<!-- NOM DE DONNEE -->
			<h5 class="large-2 left" style="text-align:right" >
				<b>
					<?php echo (array_key_exists($key, $attribs)) ? $attribs[$key]['translate'].' : ' : $key.' : ';	?>
				</b>
			</h5>
			<!-- CHAMP(S) DE SAISIE(S) -->
			<div class="large-6 left" style="margin-bottom:10px">
				<?php $form = $value['form']; ?>
				<!-- INPUT -->
				<?php if ($form['tag'] == "input") : ?>
					<div class="large-12 left">
						<input type='<?php echo $form['type']; ?>' placeholder='<?php echo $value['translate']; ?>' value='<?php echo $datas[$key] ?>' name='<?php echo $key; ?>' <?php echo (isset($form['required'])&&$form['required']) ? "required" : ""; ?>>
					</div>
				<?php endif; ?>
				<!-- SELECT -->
				<?php if ($form['tag'] == "select"): ?>
					<!-- RECHERCHE DANS LA LISTE -->
					<div class="large-4 left">
						<input type="text" onkeyup="updateList(this)" id="<?php echo $key; ?>" placeholder="Recherche dans <?php echo $form['first_opt']; ?>" style='background-color: #FDC'>
					</div>
					<!-- LISTE -->
					<div class="large-8 left">
						<select name="<?php echo $key ?>" id="lister_<?php echo $key; ?>" <?php echo ($form['required']) ? "required" : ""; ?>>
							<option value=''> - <?php echo $form['first_opt']; ?> - </option>
							<?php $opts = "list_".$key; ?>
							<?php foreach ($$opts as $val => $name): ?>
								<option value='<?php echo $val ?>' <?php echo ($datas[$key] == $val) ? "selected" : ""; ?>><?php echo $name ?></option>
							<?php endforeach; ?>
						</select>
					</div>
				<?php endif; ?>
			</div>
			<!-- FIN CHAMP(S) DE SAISIE(S) -->
		<?php endif; ?>
		</div>
		<!-- FIN LIGNE -->
	<?php endforeach; ?>
	<input type="submit" value="Modifier" class="btn-green right large-1">
</form>
