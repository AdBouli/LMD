<?php
//SESSION
session_start();
//ROUTES
define('WEBROOT', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));
define('ROOT', str_replace('index.php', '', $_SERVER['SCRIPT_FILENAME']));
//
define('CORE', ROOT.'core/');
define('CTRL', ROOT.'controllers/');
define('MODL', ROOT.'models/');
define('VIEW', ROOT.'views/');
//define('TMPL', ROOT.'template/');
define('ADDN', CORE.'addons/');
define('CONF', ROOT.'conf/');
//
define('IMG' , WEBROOT.'webroot/img/');
define('CSS' , WEBROOT.'webroot/css/');
define('JS'  , WEBROOT.'webroot/js/');
//APPELS
//conf
require_once(CONF.'database.conf');
//addons
require_once(ADDN.'html.php');
require_once(ADDN.'pagineer.php');
require_once(ADDN.'mysql.php');
require_once(ADDN.'formator.php');
//generic
require_once(CORE.'functions.php');
require_once(CORE.'controller.php');
require_once(CORE.'model.php');
//index.php
include('./webroot/index.php');
?>