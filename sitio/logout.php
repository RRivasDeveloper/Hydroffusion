<?php
	ob_start();
	header("Content-Type: text/html;charset=utf-8");
	//Inicia una nueva sesión o reanuda la existente 
    session_start();
	//Destruye toda la información registrada de una sesión
    session_destroy();
	//Redirecciona a la página de login
    header('location: ../index.php'); 
?>
