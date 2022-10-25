<?php
	require('conexion.php');	
	session_start();
		
	if(isset($_SESSION["id_usuario"])){
		header("Location: sitio/home.php");
	}
	$bandera = false;
	if(!empty($_POST))
	{
		$usuario = mysqli_real_escape_string($mysqli,$_POST['username']);
		$password = mysqli_real_escape_string($mysqli,$_POST['pass']);
		$error = '';
		
		$sha1_pass = sha1($password);
		
		$result=$mysqli->query("SELECT id FROM usuario WHERE usuario = '$usuario'");
		$rows = $result->num_rows;
		
		if($rows > 0) {//PRIMERA COMPROBACION PARA VER SI EXISTE USUARIO
			$result1=$mysqli->query("SELECT id FROM usuario WHERE usuario = '$usuario' AND pass = '$sha1_pass'");
			$rows1 = $result1->num_rows;
			
			if($rows1 > 0){//SEGUNDA COMPROBACION PARA VER SI LA CONTRASEÑA CORRESPONDE AL USUARIO
				$result2=$mysqli->query("SELECT * FROM usuario WHERE status=1 and usuario = '$usuario' AND pass = '$sha1_pass'");
				$rows2 = $result2->num_rows;
				
				if($rows2 > 0){//TERCERA COMPROBACION PARA VERIFICAR SI EL USUARIO ESTA ACTIVO CON LAS CREDENCIALES ANTERIORES
					$row = $result2->fetch_assoc();
					$_SESSION['id_usuario'] = $row['id'];
					$_SESSION['user'] = $row['usuario'];
			
					header("location: sitio/home.php");					
				}else{
					$bandera = true;
					$error = "USUARIO DESACTIVADO";
				}
				
			} else {
				$bandera = true;
			$error = "CONTRASEÑA INCORRECTA";	
			}
			
			} else {
				$bandera = true;
			$error = "USUARIO NO EXISTE";
		}
	}
	
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Danza Varones</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Inicio de Sesión
				</span>
				
				<?php if($bandera) { ?>					
						<script language="javascript">
						<?php echo 'alert("'.$error.'")';?>
						</script>
				<?php } ?>
				<form class="login100-form validate-form p-b-33 p-t-5" action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">

					<div class="wrap-input100 validate-input" data-validate = "Ingrese Usuario">
						<input class="input100" type="text" name="username" placeholder="Usuario">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Ingrese Contraseña">
						<input class="input100" type="password" name="pass" placeholder="Contraseña">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Iniciar Sesión
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>