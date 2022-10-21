<?php    
    $query_permiso=$mysqli->query("SELECT ROL_Rol from HYD_USUARIO where USU_usuario=$id_usuario");
	$select_permiso = $query_permiso->fetch_assoc();
	$_SESSION['permiso_usuario']=$select_permiso['ROL_Rol'];
    $Permiso=$_SESSION['permiso_usuario'];
?>
<nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
         <?php if($Permiso==1){?>
          <li class="nav-item">
		   <a href="ingreso_persona.php" class="nav-link">
            
              <i class="nav-icon fas fa-users"></i>
              <p>
                Gestión de Personal
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
              	   <a href="ingreso_persona.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-user-plus"></i>
                  <p>Crear Persona</p>
                </a>
              </li>
              <li class="nav-item">
                 <a href="ingreso_Usu2.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-user-tie"></i>
                  <p>Asignar Usuario</p>
                </a>
              </li>
			  <li class="nav-item">
                 <a href="update_user.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-user-tie"></i>
                  <p>Actualizar Usuarios</p>
                </a>
              </li>
            </ul>
          </li>
        <?php } ?>
        <?php if($Permiso==1){?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-people-carry"></i>
              <p>
                Proveedores
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="ingreso_Proveedor.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-people-arrows"></i>
                  <p>Crear Proveedor</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-industry"></i>
              <p>
                Almacenamiento
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="ingreso_Producto.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-download"></i>
                  <p>Ingreso de Producto</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="ingreso_Medida.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Ingreso de Medida</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="ingreso_MateriaPrima.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Ingreso de Materia Prima</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-file-alt"></i>
              <p>
                Reportes
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="Reporte_Personal.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-file-download"></i>
                  <p>Reporte de Personal</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="Reporte_Proveedores.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-file-download"></i>
                  <p>Reporte Proveedores</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="Reporte_Articulos.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-file-word"></i>
                  <p>Reporte Articulos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="Reporte_Existencia.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-file-excel"></i>
                  <p>Reporte Existencia</p>
                </a>
              </li>
            </ul>
          </li>
          <?php if($Permiso==1){?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cogs"></i>
              <p>
                Configuración General
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="ingreso_puesto.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-user-cog"></i>
                  <p>Crear Puestos</p>
                </a>
              </li>
              <li class="nav-item">
               <a href="ingreso_rol.php" class="nav-link">
                <i class="left fas fa-angle-right"></i>
                  <i class="nav-icon fas fa-users-cog"></i>
                  <p>Crear Roles</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?>
          <li class="nav-item">
            <a href="about.php" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p class="text">Nosotros</p>
            </a>
          </li>
      
        </ul>
      </nav>
      