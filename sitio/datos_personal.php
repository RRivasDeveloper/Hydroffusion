<?php
    $id_usuario=$_SESSION['id_usuario'];   
    
    $query_datos_persona=$mysqli->query("SELECT p.* FROM HYD_USUARIO as u,HYD_PERSONA as p WHERE p.per_persona=u.per_persona and u.usu_usuario=$id_usuario");
	$select_datos_persona=$query_datos_persona->fetch_assoc();
    
    $PER_PrimerNombre=$select_datos_persona['PER_PrimerNombre'];
    $PER_SegundoNombre=$select_datos_persona['PER_SegundoNombre'];
    $PER_PrimerApellido=$select_datos_persona['PER_PrimerApellido'];
    $PER_SegundoApellido=$select_datos_persona['PER_SegundoApellido'];
    $PER_DPI=$select_datos_persona['PER_DPI'];
    $PER_foto=$select_datos_persona['foto'];
    $PER_Direccion=$select_datos_persona['PER_Direccion'];
    $PER_Telefono=$select_datos_persona['PER_Telefono'];
    $PER_Email=$select_datos_persona['PER_Email'];
    $PER_Puesto=$select_datos_persona['PUE_Puesto'];
    
    $query_datos_puesto_rol=$mysqli->query("SELECT pue.pue_descripcion,rol.rol_descripcion FROM HYD_PUESTO as pue,HYD_PERSONA as per,HYD_USUARIO AS usu,HYD_ROL AS rol where per.pue_puesto=pue.pue_puesto and per.per_persona=usu.per_persona and usu.rol_rol=rol.rol_rol and usu.usu_usuario=$id_usuario");
	$select_datos_puesto_rol=$query_datos_puesto_rol->fetch_assoc();
    
    $Puesto=$select_datos_puesto_rol['pue_descripcion'];
    $Rol=$select_datos_puesto_rol['rol_descripcion'];
?>
<div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
        
            <?php if($PER_foto==""){
                  echo '<img src="dist/img/avatar5.png" class="img-circle elevation-2" alt="User Image">';
              }else{
                  echo '<img src="'.$PER_foto.'" class="img-circle elevation-2" alt="User Image">';
              }?>
        </div>
        <div class="info">
          <a href="user_info.php" class="d-block"><?php echo $PER_PrimerNombre.' '.$PER_PrimerApellido;?></a>
        </div>
      </div>