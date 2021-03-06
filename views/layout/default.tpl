<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

<head>
	<title>Accueil</title>
	<?php echo html::css_file('generic'); ?>
	<?php echo html::css_file('app'); ?>
</head>

<body>

<!-- MAIN -->
<div class="main">

	<!-- HEADER -->
	<div class="header">
		<?php include(VIEW.'layout/includes/nav_bar.tpl'); ?>
	</div>

	<!-- HEADER -->


	<!-- CONTENTS -->
	<div class="contents">

		<!-- CONTENU -->
		<div class="large-10 offset-1 left" style="margin-top:20px;">
			<?php echo $content_for_layout; ?>
		</div>
	</div>
	<!-- CONTENTS -->


	<!-- FOOTER -->
	<div class="footer">
		<hr>
		<p style="text-align:center">LMD - 2016 - Adrien Boulineau</p>
	</div>
	<!-- FOOTER -->


</div>
<!-- MAIN -->


<!-- JavaScript -->
<?php //echo html::script_file('example'); ?>

</body>

</html>