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
	
	 $query_HYD_PUESTO=$mysqli->query("SELECT * from HYD_PUESTO");
    
    if(!empty($_POST)){        
        
        $PRIMER_NOMBRE=  mysqli_real_escape_string($mysqli,$_POST['PRIMER_NOMBRE']);
		$SEGUNDO_NOMBRE=  mysqli_real_escape_string($mysqli,$_POST['SEGUNDO_NOMBRE']);
		$PRIMER_APELLIDO=  mysqli_real_escape_string($mysqli,$_POST['PRIMER_APELLIDO']);
		$SEGUNDO_APELLIDO=  mysqli_real_escape_string($mysqli,$_POST['SEGUNDO_APELLIDO']);
    	$DPI=  str_replace(' ','',mysqli_real_escape_string($mysqli,$_POST['DPI']));
		$DIRECCION=  mysqli_real_escape_string($mysqli,$_POST['DIRECCION']);
		$TELEFONO=  str_replace(' ','',mysqli_real_escape_string($mysqli,$_POST['TELEFONO']));
		$EMAIL=  mysqli_real_escape_string($mysqli,$_POST['EMAIL']);
		$CODPUESTO=  mysqli_real_escape_string($mysqli,$_POST['CODPUESTO']);
		
		$query_consulta_Persona=$mysqli->query("SELECT * from HYD_PERSONA where PER_DPI = '$DPI'");
		$run_query_consulta_Persona = $query_consulta_Persona->fetch_assoc();
		
		
		if($run_query_consulta_Persona>0){
			$bandera = true;
            $aviso = "Este numero de docuemento DPI ya se ingreso anteriormente con otro usuario";
		}else{
		
			$query = "INSERT INTO HYD_PERSONA (PER_PrimerNombre,PER_SegundoNombre,PER_PrimerApellido,PER_SegundoApellido,PER_DPI,PER_Direccion,PER_Telefono,PER_Email,PUE_Puesto) VALUES ('$PRIMER_NOMBRE',  '$SEGUNDO_NOMBRE',  '$PRIMER_APELLIDO'  ,'$SEGUNDO_APELLIDO' , '$DPI' ,'$DIRECCION' ,'$TELEFONO' ,'$EMAIL','$CODPUESTO' ) ";
			$insert_query=$mysqli->query($query);
			//echo $query;
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
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <script type="text/javascript" src="valid_reg_persona.js"></script>
  
  <!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
  
  <!--===============================================================================================-->
	<script src="dist/js/jquery.maskedinput.js"></script>
  
	<script>
		$(document).ready(function($){
			$('#TELEFONO').mask("9999 9999");
			$('#DPI').mask("9999 99999 9999");
			//$('#telefono2').mask("9999 9999");			
		});
	</script>
  
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
            <h1 class="m-0">Ingreso de Datos Generales de Persona</h1>
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
     <form  method="POST" id="persona" name="persona" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
	
                    
                                <fieldset>
                                
                                 
                          
                                  <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Primer Nombre</label>
                                        <input name="PRIMER_NOMBRE"  id="PRIMER_NOMBRE" class="form-control" placeholder="Ingrese Primer Nombre" type="text">
                                      </div>
                                    </div>                       
                                   
								   <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Segundo Nombre</label>
                                        <input name="SEGUNDO_NOMBRE"  id="SEGUNDO_NOMBRE" class="form-control" placeholder="Ingrese Segundo Nombre" type="text">
                                      </div>
                                    </div>    
									
									<div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Primer Apellido</label>
                                        <input name="PRIMER_APELLIDO"  id="PRIMER_APELLIDO"  class="form-control" placeholder="Ingrese Primer Apellido" type="text">
                                      </div>
                                    </div>                       
                                   
								   <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Segundo Apellido</label>
                                        <input name="SEGUNDO_APELLIDO"  id="SEGUNDO_APELLIDO"  class="form-control" placeholder="Ingrese Segundo Apellido" type="text">
                                      </div>
                                    </div> 
									
									<div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">DPI</label>
                                        <input name="DPI"  id="DPI"  class="form-control" placeholder="Ingrese DPI" type="integer">
                                      </div>
                                    </div> 
									
									<div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Dirección</label>
                                        <input name="DIRECCION"  id="DIRECCION"  class="form-control" placeholder="Ingrese Dirección" type="text">
                                      </div>
                                    </div>
									
									<div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Teléfono</label>
                                        <input name="TELEFONO"  id="TELEFONO"  class="form-control" placeholder="Ingrese No. de Teléfono" type="integer">
                                      </div>
                                    </div>
                                  
								  <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">E-mail</label>
                                        <input name="EMAIL"  id="EMAIL"  class="form-control" placeholder="Ingrese E-mail" type="email">
                                      </div>
                                    </div>
								  
								   <div class="form-group">
                                      <div class="col-md-6">
                                        <label class="control-label" for="surname">Ingrese Puesto</label>
                                        <select id="CODPUESTO" name="CODPUESTO" class="form-control" placeholder="Selecione Puesto">
                                        <option></option>
                                        <?php while($select_HYD_PUESTO = $query_HYD_PUESTO->fetch_assoc()){ ?>
                                        <option value="<?php echo $select_HYD_PUESTO['PUE_Puesto']; ?>"><?php echo $select_HYD_PUESTO['PUE_Descripcion']; ?></option>
                                        <?php }?>
                                          </select>
                                          <a class="nav-link" href="ingreso_puesto.php">¿No esta el puesto? Crear Nuevo</a>
                                      </div>
                                    </div>
									
					
									
									
                                    <div class="form-group">
                                      <div class="col-md-6">
                                        <button type="button" class="btn btn-primary btn-lg btn-block info" onclick="val3();">Guardar</button>
										
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

<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
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
