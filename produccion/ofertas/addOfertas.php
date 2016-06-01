<?php include('../logeo.php'); 
include('../extras/conexion.php');
$link=Conectarse();

if (!control_access("OFERTAS", 'AGREGAR')) { $aErrores[] = "USTED NO TIENE PERSIMO PARA REALIZAR ESTA ACCION";  echo "<script language='JavaScript'>document.location.href='../index.php';</script>"; }


header('Content-type: application/json; charset=utf-8');
$aErrores=array();
$jsondata = array();

if((isset($_POST["tituloOferta"]))&&($_POST["tituloOferta"]!="")){ $tituloOferta=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["tituloOferta"]))); } else {$aErrores[] = "El titulo de la oferta no puede estar vacío";}
if((isset($_POST["cantidadCupones"]))&&($_POST["cantidadCupones"]!="")){ $cantidadCupones=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["cantidadCupones"]))); } else {$aErrores[] = "Debe especificar la cantidad de cupones a ofertar";}
if((isset($_POST["categoriaOferta"]))&&($_POST["categoriaOferta"]!="")){ $categoriaOferta=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["categoriaOferta"]))); } else {$aErrores[] = "Debe especificar la categoría de la oferta";}
if((isset($_POST["porcentajeAhorro"]))&&($_POST["porcentajeAhorro"]!="")){ $porcentajeAhorro=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["porcentajeAhorro"]))); } else {$aErrores[] = "Debe indicar el porcentaje de ahorro";}
if((isset($_POST["valorCupon"]))&&($_POST["valorCupon"]!="")){ $valorCupon=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["valorCupon"]))); } else {$aErrores[] = "Debe indicar el valor del cupón";}
if((isset($_POST["validoDesde"]))&&($_POST["validoDesde"]!="")){ $validoDesde=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["validoDesde"]))); } else {$aErrores[] = "Debe indicar desde que fecha es válida la oferta";}
if((isset($_POST["validoHasta"]))&&($_POST["validoHasta"]!="")){ $validoHasta=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["validoHasta"]))); } else {$aErrores[] = "Debe indicar hasta que fecha es válida la oferta";}
if((isset($_POST["categoriaOferta"]))&&($_POST["categoriaOferta"]!="")){ $categoriaOferta=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["categoriaOferta"]))); } else {$aErrores[] = "Debe especificar la categoría de la oferta";}
//if((isset($_POST["descripcionOferta"]))&&($_POST["descripcionOferta"]!="")){ $categoriaOferta=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["descripcionOferta"]))); } else {$aErrores[] = "La descripción de la oferta no puede estar vacía";}
if((isset($_POST["clienteVendedor"]))&&($_POST["clienteVendedor"]!="")){ $categoriaOferta=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["clienteVendedor"]))); } else {$aErrores= "Debe especificar a que cliente pertenece la oferta";}
if((isset($_POST["estatus"]))&&($_POST["estatus"]!="")){ $activo=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["estatus"]))); }  else {$activo=0;}
if((isset($_POST["verificacion"]))&&($_POST["verificacion"]!="")){ $verificacion=strip_tags(htmlentities(mysqli_real_escape_string($link, $_POST["verificacion"]))); } else {$verificacion=0;}
$fechacompleta=date('Y-m-d H:i:s');





if(count($aErrores)==0) { 

	//$query = "";
	//$resultado = mysqli_query($link, $query);
	$resultado=true;


	if (isset($_FILES['archivos'])) {
		$cuantos=count($_FILES['archivos']['name']);
    /*$file_ary = reArrayFiles($_FILES['archivos']);

    foreach ($file_ary as $file) {
    	//$g.=$file['name'];
    	$aErrores[]=$file['name'];

       /* print 'File Name: ' . $file['name'];;
        print 'File Type: ' . $file['type'];
        print 'File Size: ' . $file['size'];
    }*/

}
else{
	$cuantos="No llega";
}

	if ($resultado) {

		//Envío la respuesta al Front para redirigir
		$jsondata["success"] = true;
		$jsondata["data"] = array(
			'message' => "Cliente registrado exitosamente... =".$cuantos
			);


	} else {
		$jsondata["success"] = false;
		$jsondata["data"] = array(
			'message' => "Ocurrió un error, por favor revisar los campos"
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