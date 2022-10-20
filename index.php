<?php
	ob_start();
	header("Content-Type: text/html;charset=utf-8");
	require('sitio/conexion.php');
	session_start();
		
	if(isset($_SESSION["id_usuario"])){
		header("Location: sitio/index.php");
	}
	$bandera = false;
	if(!empty($_POST))
	{
		$usuario = mysqli_real_escape_string($mysqli,$_POST['user']);
		$password = mysqli_real_escape_string($mysqli,$_POST['pass']);
		$error = '';
		
		$sha1_pass = sha1($password);
		
		$result=$mysqli->query("SELECT usu_usuario FROM HYD_USUARIO WHERE usu_nombre = '$usuario'");
		$rows = $result->num_rows;
		
		if($rows > 0) {//PRIMERA COMPROBACION PARA VER SI EXISTE USUARIO
			$result1=$mysqli->query("SELECT usu_usuario FROM HYD_USUARIO WHERE usu_nombre = '$usuario' AND usu_contrasenia = '$sha1_pass'");
			$rows1 = $result1->num_rows;
			
			if($rows1 > 0){//SEGUNDA COMPROBACION PARA VER SI LA CONTRASEÑA CORRESPONDE AL USUARIO
				$result2=$mysqli->query("SELECT usu_usuario FROM HYD_USUARIO WHERE usu_nombre = '$usuario' AND usu_contrasenia = '$sha1_pass'");
				$rows2 = $result2->num_rows;
				
				if($rows2 > 0){//TERCERA COMPROBACION PARA VERIFICAR SI EL USUARIO ESTA ACTIVO CON LAS CREDENCIALES ANTERIORES
					$row = $result2->fetch_assoc();
					$_SESSION['id_usuario'] = $row['usu_usuario'];
			
					header("location: sitio/index.php");					
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
<html lang="en">
<head>
	<title> CONTROL DE MATERIA HYDRODIFFUSION </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
	
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('sitio/dist/img/login/wallpaper_login.jpg');height: 100vh;background-position: center;background-attachment: fixed;">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>
				
				<?php if($bandera) { ?>					
						<script language="javascript">
						<?php echo 'alert("'.$error.'")';?>
						</script>
				<?php } ?>

				<form class="login100-form validate-form" action="<?php htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">

					<span class="login100-form-title">
						Ingreso de Usuarios
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Por favor ingrese su usuario">
						<input class="input100" type="text" name="user" id="user" placeholder="Usuario">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Por favor ingrese su contraseña">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Iniciar Sesión
						</button>
					</div>

					<!--<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Usuario / Contraseña
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Crea una cuenta
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>-->
				</form>
			</div>
		</div>
		<?php include("sitio/footer.php")?>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>