<?php
    ob_start();
	header("Content-Type: text/html;charset=utf-8");
    session_start();
	require('conexion.php');
      $bandera = false;
      $aviso;
    
    //Evaluamos si existe la variable de sesión id_usuario, si no existe redirigimos al index
	if(!isset($_SESSION["id_usuario"])){
		header("Location: ../index.php");
	}
	
	$Acceso=$_SESSION['permiso_usuario'];
	if($Acceso<>1){
		header("Location: index.php");
	}
    
    $query_HYD_PERSONA=$mysqli->query("SELECT * from HYD_PERSONA");
    $query_HYD_ROL=$mysqli->query("SELECT * from HYD_ROL");
    
    if(!empty($_POST)){
		
		$cod_usuario =  mysqli_real_escape_string($mysqli,$_POST['cod_usuario']);
		$Nombre_Usuario =  mysqli_real_escape_string($mysqli,$_POST['Nombre_Usuario']);
		$pass =  mysqli_real_escape_string($mysqli,$_POST['pass']);
		$cod_persona =  mysqli_real_escape_string($mysqli,$_POST['cod_persona']);
		$Codigo_Rol =  mysqli_real_escape_string($mysqli,$_POST['Codigo_Rol']);
		    		
		$query_consulta_usuario=$mysqli->query("
			SELECT * from HYD_USUARIO where USU_Nombre LIKE '%$Nombre_Usuario%'
									");
		$run_query_consulta_usuario = $query_consulta_usuario->fetch_assoc();
			
		$Encrypt_pass = sha1($pass);
	if($run_query_consulta_usuario>0){
			$bandera = true;
            $aviso = "Este usuario ya existe";
		}else{


	
        $query = "INSERT INTO HYD_USUARIO (USU_Nombre,USU_Contrasenia,PER_Persona,ROL_Rol) VALUES ('$Nombre_Usuario','$Encrypt_pass','$cod_persona','$Codigo_Rol') ";
        $insert_query=$mysqli->query($query);
    
        if($insert_query>0){
            $bandera = true;
            $aviso = "Datos Ingresados Exitosamente.";
        }else{
            $bandera = true;
            $aviso = "Algo salió mal, datos no ingresados.";
        }    
    }
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gestión | Hidrodiffusión</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <script type="text/javascript" src="valid_reg_usu2.js"></script>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
	<?php include("nav_top.php")?>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <?php include("datos_empresa.php")?>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <?php include("datos_personal.php")?>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Buscar" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
	  <?php include("sider_menu.php")?>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Ingreso de Usuario</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active"><a href="#">Inicio</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    
    <?php if($bandera) { ?>	
        <script language="javascript">
        <?php echo 'alert("'.$aviso.'");'?>
        </script>
	<?php } ?>

    <!-- Main content -->
     <form  method="POST" id="Usu2"  name="Usu2" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
                    
                                <fieldset>
                                
                                 
                          
                                  <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Nombre de Usuario</label>
                                        <input name="Nombre_Usuario" id="Nombre_Usuario" class="form-control" placeholder="Ingrese Nombre de Usuario" type="text">
                                      </div>
                                    </div>                       
                                   
                                  <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Password</label>
                                        <input name="pass" id="pass" class="form-control" placeholder="Ingrese Password" type="password">
                                      </div>
                                    </div>   

                                  <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Persona</label>
                                        <select id="cod_persona" name="cod_persona" class="form-control" placeholder="Selecione Persona">
                                        <option></option>
                                        <?php while($select_HYD_PERSONA = $query_HYD_PERSONA->fetch_assoc()){ ?>
                                        <option value="<?php echo $select_HYD_PERSONA['PER_Persona']; ?>"><?php echo $select_HYD_PERSONA['PER_PrimerNombre'].' '.$select_HYD_PERSONA['PER_SegundoNombre'].' '.$select_HYD_PERSONA['PER_PrimerApellido'].' '.$select_HYD_PERSONA['PER_SegundoApellido']; ?></option>
                                        <?php }?>
                                          </select>
                                          <a class="nav-link" href="ingreso_persona.php">¿No esta la persona? Crear Nueva</a>
                                      </div>
                                    </div>
                                    
                                  <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Rol</label>
                                        <select id="Codigo_Rol" name="Codigo_Rol" class="form-control" placeholder="Selecione Rol">
                                        <option></option>
                                        <?php while($select_HYD_ROL = $query_HYD_ROL->fetch_assoc()){ ?>
                                        <option value="<?php echo $select_HYD_ROL['ROL_Rol']; ?>"><?php echo $select_HYD_ROL['ROL_Descripcion']; ?></option>
                                        <?php }?>
                                          </select>
                                          <a class="nav-link" href="ingreso_rol.php">¿No esta el rol? Crear Nuevo</a>
                                      </div>
                                    </div>

                                  <div class="form-group">
                                      <div class="col-md-6">
                                        <button type="button" class="btn btn-primary btn-lg btn-block info" onclick="ValidacionUsu2();">Guardar</button>
                                      </div>
                                    </div>     
                                </fieldset> 
                              </form>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->  
  <?php include("footer.php")?>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>
