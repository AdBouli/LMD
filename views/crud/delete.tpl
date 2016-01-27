<?php if (!isset($msg)): ?>

<p>Êtes-vous sûr de la suppression ?</p>

<!-- <form action="<?php echo WEBROOT.LOC_Name ?>/delete/<?php echo $datas['id'] ?>" method="POST"> -->
<form action="#" method="POST">
	<input type="hidden" name="input_for_checking">
	<!-- OUI -->
	<input type="submit" class="btn-red large-1" value="Oui">
	<!-- NON -->
	<a href="<?php echo WEBROOT.LOC_Name ?>/read/<?php echo $datas['id'] ?>" class="btn-lgrey large-1">Non</a>
</form>
<?php else: ?>
<div class="large-12 left text-center">
	<?php echo $msg; ?>
</div>
<!-- bouton retour -->
<a href="<?php echo WEBROOT.LOC_Name ?>" class="btn-lgrey large-1">retour</a>

<?php endif ?>