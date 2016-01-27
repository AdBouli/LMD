<?php if (empty($msg)) : ?>
<div class="row">
	<div class="columns large-centered small-centered large-4 small-4">
		<form action="<?php echo WEBROOT.'Session/signin' ?>" method="POST">
			<input type="text" name="login" placeholder="Identifiant" required>
			<input type="password" name="password" placeholder="Mot de passe" required>
			<input type="password" name="confirm_password" placeholder="Confirmez votre mot de passe" required>
			<input type="email" name="mail" placeholder="Adresse eMail" required>
			<input type="submit" value="Inscription" class="button">
		</form>
	</div>
</div>
<?php else: ?>
<!-- bouton retour -->
<a href="<?php echo WEBROOT ?>Session" class="hollow button">Se connecter</a>
<?php echo $msg; ?>
<?php endif; ?>

<?php if (!empty($msg_exist)): ?>
<?php foreach ($msg_exist as $value):?>
<p class="text-center"><?php echo $value; ?></p>
<?php endforeach; ?>
<?php endif ?>