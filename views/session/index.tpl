<div class="row">
	<div class="columns large-centered small-centered large-4 small-4">
		<form action="<?php echo WEBROOT.'Session/login' ?>" method="POST">
			<input type="text" name="login" placeholder="Identifiant ou eMail" required>
			<input type="password" name="password" placeholder="Mot de passe" required>
			<input type="submit" value="Connection" class="button">
		</form>
	</div>
</div>