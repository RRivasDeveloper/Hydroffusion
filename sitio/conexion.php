<?php
	$mysqli=new mysqli("localhost","root","","hydro");
	//$mysqli=new mysqli("SERVER","USER","PASS","BASE");
	$mysqli->set_charset("utf8");
	if(mysqli_connect_errno()){
		echo 'Conexion Fallida : ', mysqli_connect_error();
		exit();
	}
?>