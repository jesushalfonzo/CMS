<?php include('../logeo.php'); 
include('../extras/conexion.php');
$link=Conectarse();

if (!control_access("CATEGORIAS", 'AGREGAR')) { $aErrores[] = "USTED NO TIENE PERSIMO PARA REALIZAR ESTA ACCION";  echo "<script language='JavaScript'>document.location.href='../index.php';</script>"; }


header('Content-type: application/json; charset=utf-8');
$aErrores=array();
$jsondata = array();

if((isset($_POST["nombreCat"]))&&($_POST["nombreCat"]!="")){ $nombreCat=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["nombreCat"]))); } else {$aErrores[] = "Debe especificar el nombre de la categoría";}
if((isset($_POST["descripcionCat"]))&&($_POST["descripcionCat"]!="")){ $descripcionCat=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["descripcionCat"]))); } else {$aErrores[] = "Debe especificar la descripciónd de la categoría";}
if((isset($_POST["estatus"]))&&($_POST["estatus"]!="")){ $activo=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["estatus"]))); }  else {$activo=0;}

$fechacompleta=date('Y-m-d H:i:s');


if(count($aErrores)==0) { 

	$query = "INSERT INTO m_categorias (m_categoria_id, m_categoria_nombre, m_categoria_descripcion, m_categoria_estatus) VALUES (Null, '$nombreCat', '$descripcionCat', '$activo')";
	$resultado = mysqli_query($link, $query);

	if ($resultado) {

		//Envío la respuesta al Front para redirigir
		$jsondata["success"] = true;
		$jsondata["data"] = array(
			'message' => "Categoría registrada exitosamente..."
			);


	} else {
		$jsondata["success"] = false;
		$jsondata["data"] = array(
			'message' => "Ocurrió un error, por favor revisar los campos". $query
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

