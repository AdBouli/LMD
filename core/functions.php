<?php

function prvar($var, $name=""){
	echo "<b>$name</b><br>";
	echo '<pre>';
	print_r($var);
	echo '</pre>';
}


?>