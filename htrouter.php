<?php
date_default_timezone_set('America/Bogota');
$_SERVER['CI_ENV'] = 'development';
return false;
/*$path = isset($_SERVER['PATH_INFO']) ? $_SERVER['PATH_INFO'] : (isset($_SERVER["SCRIPT_NAME"]) ? $_SERVER["SCRIPT_NAME"] : 'NULL');
if (!file_exists(__DIR__ . DIRECTORY_SEPARATOR . $path)) {
    include 'index.php';
} else {
    return false;
}*/