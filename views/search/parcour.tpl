<div class="large-8 offset-2 left">
	<form action="#" method="POST">
		<!-- CHAMP PRINCIPALE -->
		<input class="large-10" type="text" name="nom_parcour" placeholder="Rechercher un parcour">
		<!-- submit -->
		<input class="large-2" type="submit" value="Rechercher">
		<div class="large-12 left text-right" style="font-size:10;"><u onclick="display('advanced')" style="cursor:pointer">recherche avancée</u></div>
		<!-- CHAMPS CACHES -->
		<div class="large-12 left" id="advanced" style="display:none">
			<!-- MENTIONS -->
			<fieldset><legend>Mention</legend>
				<div class="large-12 left">
					<!-- RECHERCHE DANS LA LISTE -->
					<input type="text" id="mention" class="large-6" onkeyup="updateList(this)" placeholder="Recherche dans mentions" style='background-color: #FDC'>
					<!-- LISTE -->
					<select id="lister_mention" class="large-6" name="mention">
						<?php foreach ($list_mentions as $key => $value) : ?>
							<option value="<?php echo $key; ?>" id="mention"><?php echo $value; ?></option>
						<?php endforeach; ?>
					</select>
				</div>
			</fieldset>
			<!-- METIERS -->
			<fieldset><legend>Métiers</legend>
				<div class="large-12 left">
					<!-- RECHERCHE DANS LA LISTE -->
					<input type="text" id="metiers" class="large-6" onkeyup="updateList(this)" placeholder="Recherche dans métiers" style='background-color: #FDC'>
					<!-- LISTE -->
					<select id="lister_metiers" class="large-6">
						<?php foreach ($list_metiers as $key => $value) : ?>
							<option value="<?php echo $key; ?>" onclick="selector(this)" id="metiers"><?php echo $value; ?></option>
						<?php endforeach; ?>
					</select>
				</div>
				<div class="large-12 left">
					<!-- LISTE DES ELEMENTS SELECTIONNES -->
					<ul style="list-style-type:none;font-size:12;" id="selector_metiers" class="selector"></ul>
					<!-- CHAMP CACHE CONTENANT LES IDENTIFIANT DES ELEMENTS SELECTIONNES -->
					<input type="hidden" id="values_metiers" name="metiers">
				</div>
			</fieldset>
			<!-- UES -->
			<fieldset><legend>Unité d'enseignement</legend>
				<div class="large-12 left">
					<!-- RECHERCHE DANS LA LISTE -->
					<input type="text" id="ues" class="large-6" onkeyup="updateList(this)" placeholder="Recherche dans unités d'enseignement" style='background-color: #FDC'>
					<!-- LISTE -->
					<select id="lister_ues" class="large-6">
						<?php foreach ($list_ues as $key => $value) : ?>
							<option value="<?php echo $key; ?>" onclick="selector(this)" id="ues"><?php echo $value; ?></option>
						<?php endforeach; ?>
					</select>
				</div>
				<div class="large-12 left">
					<!-- LISTE DES ELEMENTS SELECTIONNES -->
					<ul style="list-style-type:none;font-size:12;" id="selector_ues" class="selector"></ul>
					<!-- CHAMP CACHE CONTENANT LES IDENTIFIANT DES ELEMENTS SELECTIONNES -->
					<input type="hidden" id="values_ues" name="ues">
				</div>
			</fieldset>
		</div>
	</form>
</div>

<div class="large-6 offset-3 left">
	<?php var_dump(@$resultStrict); ?>
	<hr>
	<?php var_dump(@$resultApprox); ?>
</div>

<script src="<?php echo JS.'updateList.js'; ?>"></script>
<script src="<?php echo JS.'selector.js'; ?>"></script>
<script src="<?php echo JS.'display.js'; ?>"></script>