<!doctype html>
<html lang="es">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  </head>    
  <body>
    <?php 
        include("bd.php");
        $id=$_GET["id"];
         $sqlalumnos="SELECT `id`, `nombre`, `apellidos`, `nota` FROM `alumnos` WHERE `id`=".$id;
        
        $resultado = $mysqli->query($sqlalumnos);
        
        if ($resultado->num_rows> 0) {
            while($fila=$resultado->fetch_assoc()){
                $apellidos=$fila["apellidos"];
                $id=$fila["id"];
                $nombre=$fila["nombre"];
                $nota=$fila["nota"];
            }
        } 
    ?>
    <form action="updatealumno.php" method="post" enctype="multipart/form-data" id="formUpdateAlumno"> 
    <!-- Mandamos el id oculto para que sea accesible en el archivo intermedio de actualizar -->
    <input type="hidden" name="id" value="<?php echo $id;?>">
    
    <label for="apellidos">Apellidos</label>
    <input type="text" id="apellidos" name="apellidos" value="<?php echo $apellidos;?>"> 
    <br>                                    
    <label for="apellidos">Nombre</label>
    <input type="text" id="nombre" name="nombre" value="<?php echo $nombre;?>"> 
    <br>
    <label for="nota">Nota</label>
    <input type="number" id="nota" name="nota" value="<?php echo $nota;?>"> 
     
    <br>
    <button type="submit" class="btn btn-primary" id="modicar">Modificar</button>
</form>
  </body>
</html>