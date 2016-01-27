<?php echo @$msg; ?>

<div class="large-2 left">
	<!-- bouton retour -->
	<a href="<?php echo WEBROOT.LOC_Name ?>" class="btn-lgrey">retour</a>
</div>

<div class="large-6 left">
	<h3><?php echo Title_Read; ?></h3>
</div>

<div class="large-4 left">
	<!-- bouton modifier -->
	<a href="<?php echo WEBROOT.LOC_Name ?>/update/<?php echo $datas['id'] ?>" class="btn-yellow">Modifier</a>
	<!-- bouton supprimer -->
	<a href="<?php echo WEBROOT.LOC_Name ?>/delete/<?php echo $datas['id'] ?>" class="btn-red">Supprimer</a>
</div>

<?php foreach ($datas as $key => $value) : ?>

<div class="large-4 offset-1 left" style="border-radius:20px; margin-bottom:5px; padding: 30px; border:1px inset; background-color: #fff; ">
	<div>
		<b>
		<?php
		if(array_key_exists($key, $attribs)){
			echo $attribs[$key]['translate'].' : ';
		}else{
			echo $key.' : ';
		}
		?>
		</b>
	</div>
	<div>
		<?php
		//si la valeur et un tableau (lien vers la donnée liée)
		if(is_array($value)){
			echo '<a href="'.WEBROOT.$value[0].'/read/'.$value[1].'">'.$value[2].'</a>';
		}else{
			//sinon on affiche juste la donnée
			echo html_entity_decode($value);
		}
		?>
	</div>
</div>

<?php endforeach; ?>

<div class="large-12 left"><hr></div>

<?php foreach ($rels as $nom_rel => $values) : ?>

<div class="large-4 offset-1 left" style="border-radius:20px; margin-bottom:5px; padding: 30px; border:1px inset; background-color: #fff; ">
	<div class="large-12 left" style="overflow-y: scroll; overflow-x: scroll; height: 250px;">
		<table>
			<!-- head -->
			<thead>
				<tr>
					<?php foreach ($relations[$nom_rel] as $key => $value) : ?>
						<th>
							<?php echo $value['translate']; ?>
						</th>
					<?php endforeach; ?>
				</tr>
			</thead>
			<!-- body -->
			<tbody>
				<?php foreach ($values as $key => $value) : ?>
				<!-- ligne -->
					<tr onclick="document.location='<?php echo WEBROOT.$nom_rel.'/read/'.$key; ?>'">
						<?php foreach ($relations[$nom_rel] as $key2 => $value2) : ?>
							<!-- cellule -->
							<td>
								<?php echo $value[$key2]; ?>
							</td>
						<?php endforeach; ?>
					</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</div>

<?php endforeach; ?>


