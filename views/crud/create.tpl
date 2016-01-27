<div class="large-12 left text-center">
	<?php echo @$msg; ?>
</div>

<script src="<?php echo JS.'updateList.js'; ?>"></script>

<div class="large-3 left">
	<!-- bouton retour -->
	<a href="<?php echo WEBROOT.LOC_Name ?>" class="btn-lgrey">retour</a>
</div>
<div class="large-9 left">
	<!-- titre -->
	<h3><?php echo Title_Create ?></h3>
</div>

<!-- formulaire -->
<!-- <form action="<?php echo WEBROOT.LOC_Name ?>/create" method="POST"> -->
<form action="#" method="POST">
	<?php foreach ($attribs as $key => $value) : ?>
		<?php if (isset($value['form'])) : ?>
			<?php $form = $value['form']; ?>
			<!-- LIGNE -->
				<div class="large-12 left" style="margin-bottom:10px">
					<!-- INPUT -->
					<?php if ($form['tag'] == "input") : ?>
						<input class="large-6 offset-2 left" type='<?php echo $form['type']; ?>' placeholder="<?php echo $value['translate']; ?>" name='<?php echo $key; ?>' <?php echo (isset($form['required'])&&$form['required']) ? "required" : "style='background-color: #DDD'"; ?>>
					<!-- SELECT -->
					<?php elseif ($form['tag'] == "select") : ?>
						<div class="large-2 offset-2 left">
							<input class="large-12" type="text" onkeyup="updateList(this)" id="<?php echo $key; ?>" placeholder="Recherche dans <?php echo $form['first_opt']; ?>" style='background-color: #FDC'>
						</div>
						<div class="large-4 left">
							<select class="large-12" name="<?php echo $key ?>" id="lister_<?php echo $key; ?>" <?php echo (@$form['required']) ? "required" : ""; ?>>
								<option value=''> - <?php echo $form['first_opt']; ?> - </option>
								<?php $list = 'list_'.$key; ?>
								<?php foreach ($$list as $val => $name): ?>
									<option value='<?php echo $val ?>'><?php echo $name ?></option>
								<?php endforeach; ?>
							</select>
						</div>
						<!-- TEXTAREA -->
					<?php elseif ($form['tag'] == 'textarea') : ?>
						<textarea class="large-9" name='<?php echo $key; ?>' <?php echo (isset($form['required'])&&$form['required']) ? "required" : ""; ?>><?php echo $value['translate']; ?></textarea>
					<?php endif; ?>
				</div>
				<!-- FIN LIGNE -->
		<?php endif; ?>
	<?php endforeach; ?>
	<input type="submit" value="Créer" class="btn-green large-1 right">
</form>
