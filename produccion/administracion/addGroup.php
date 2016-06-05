<?php include('../logeo.php'); 
include('../extras/conexion.php');
$link=Conectarse();


if (!control_access("ADMINISTRACION", 'AGREGAR')) { $aErrores[] = "USTED NO TIENE PERSIMO PARA REALIZAR ESTA ACCION";  }


header('Content-type: application/json; charset=utf-8');
$aErrores=array();
$jsondata = array();

if((isset($_POST["grupoNombre"]))&&($_POST["grupoNombre"]!="")){ $grupoNombre=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["grupoNombre"]))); } else {$aErrores[] = "Debe especificar le nombre del grupo";}
if((isset($_POST["descripconGrupo"]))&&($_POST["descripconGrupo"]!="")){ $descripconGrupo=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["descripconGrupo"]))); } else {$aErrores[] = "Debe agregar una descripción del grupo";}


if(count($aErrores)==0) { 

	$query = "INSERT INTO m_grupo (m_grupo_id, m_grupo_nombre, m_grupo_descripcion, m_grupo_status) VALUES (Null, '$grupoNombre', '$descripconGrupo', 'A')";
	$resultado = mysqli_query($link, $query);
	if ($resultado) {

		$jsondata["success"] = true;
		$jsondata["data"] = array(
			'message' => "El grupo ha sido creado correctamente"
			);


	} else {
		$jsondata["success"] = false;
		$jsondata["data"] = array(
			'message' => "ERROR - Ocurrió un error al intentar crear el grupo"
			);
	}

	echo json_encode($jsondata, JSON_FORCE_OBJECT);

}
else{ 
	$jsondata["success"] = false;
	$jsondata["data"] = array(
		'message' => $aErrores
		);

	echo json_encode($jsondata, JSON_FORCE_OBJECT);

}

?>