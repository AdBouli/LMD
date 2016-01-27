<?php

//LANCEUR
$params     = explode('/', $_GET['p']);
$controller = strtolower(@$params[0]);
$action     = strtolower(@$params[1]);

if(empty($controller)){ $controller = 'home'; }
if(empty($action)){	    $action     = 'index'; }

$ctrl = CTRL.$controller.'.ctrl';

if(file_exists($ctrl)){
	require_once($ctrl);
	$controller = new $controller();
}
if(method_exists($controller, $action)){
	unset($params[0]);
	unset($params[1]);
	call_user_func_array(array($controller,$action), $params);
}else {
	echo "erreur 404";
}


?>