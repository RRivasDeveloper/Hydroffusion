<?php
 require 'conexion.php';
 $bandera = false;
  
  if(!empty($_POST)){
    $PUE_Puesto =  mysqli_real_escape_string($mysqli,$_POST['PUE_Puesto']);
    $PUE_Descripcion  =  mysqli_real_escape_string($mysqli,$_POST['PUE_Descripcion']);
    
    $query = "INSERT INTO HYD_PUESTO VALUES ('$PUE_Puesto','$PUE_Descripcion') ";
    $insert_query=$mysqli->query($query);
    
    $bandera = true;
    
  }else{
      header("Location: index.php");
  }

/*if($bandera){

   echo "<script> alert('correcto');
	
   </script>";

}else{
    echo "<script> alert('incorrecto');

    </script>";
}*/


?>