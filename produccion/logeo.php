<?php ini_set('session.gc_maxlifetime',7200);
ini_set("session.cache_expire",120);
session_start();
if (isset($_SESSION["AMARILLASw3b"])){$variable=$_SESSION["AMARILLASw3b"];}else{$variable="";}
header('Content-Type: text/html; charset=UTF-8');
$urlphpserver= curPageURL();

$aux_server=explode("/",$urlphpserver);
$serveractual=$aux_server[0]."//".$aux_server[2]."/".$aux_server[3]."/".$aux_server[4];

function curPageURL() {
	$pageURL = 'http';
// if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
	$pageURL .= "://";
	if ($_SERVER["SERVER_PORT"] != "80") {
		$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
	} else {
		$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	}
	return $pageURL;
}


if ($variable != '4m4r1ll4as0F3rtas'){
	echo "<script language='JavaScript'>parent.location.href='".$serveractual."/index.php';</script>";
}
else{  
	$loginusuario=$_SESSION['usuarioL0g3ad0'];
	$nombre_completo=$_SESSION['nombreUSUcmpleto'];
	$idusuario=$_SESSION['1dusuar10'];
	$permisosAdmin=$_SESSION["R0l3sp3rM1s0s"];
}


//CLASES PARA EL MANEJO DE LOS ROLES
// Obtain The Key Of The Array


function control_access($sKey, $id){ 
	$permiso=false;
	$permisosAdmin=$_SESSION["R0l3sp3rM1s0s"];
	if($permisosAdmin[$sKey][$id]=="SI"){
		$permiso=true;
	}
	return $permiso;
}

?>