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
if((isset($_POST["idCategory"]))&&($_POST["idCategory"]!="")){ $idCategory=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["idCategory"]))); } else {$aErrores[] = "NO SE HA ESPECIFICADO UN ID";}



$fechacompleta=date('Y-m-d H:i:s');


if(count($aErrores)==0) { 

	$query = "UPDATE m_categorias  SET m_categoria_nombre='$nombreCat', m_categoria_descripcion='$descripcionCat' , m_categoria_estatus='$activo' WHERE m_categoria_id='$idCategory'";
	$resultado = mysqli_query($link, $query);

	if ($resultado) {

		//Envío la respuesta al Front para redirigir
		$jsondata["success"] = true;
		$jsondata["data"] = array(
			'message' => "Categoría actualizada exitosamente..."
			);


	} else {
		$jsondata["success"] = false;
		$jsondata["data"] = array(
			'message' => "Ocurrió un error, por favor revisar los campos ".$query 
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

