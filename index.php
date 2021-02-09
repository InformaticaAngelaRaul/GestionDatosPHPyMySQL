<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indice</title>
</head>
<body>
<?php include("bd.php"); ?>
    <table>
        <tr>
            <th>Numero</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Nota</th>
            <th><a href="nuevoalumno.php">Nuevo Alumno</a></th>
        </tr>
        <?php 
        $sqlalumnos="SELECT `id`, `nombre`, `apellidos`, `nota` FROM `alumnos`"; 
        $resultado = $mysqli->query($sqlalumnos);
        
        if($resultado->num_rows> 0){
            while($fila=$resultado->fetch_assoc()){
                $id=$fila["id"];
                $nombre=$fila["nombre"];
                $apellidos=$fila["apellidos"];
                $nota=$fila["nota"];
                ?>
                <tr>
                    <td><?php echo $id; ?></td>
                    <td><?php echo $nombre; ?></td>
                    <td><?php echo $apellidos; ?></td>
                    <td><?php echo $nota; ?></td>
                    <td><a href="borraralumno.php?id=<?php echo $id;?>">Borrar Alumno</a></td>
                    <td><a href="modificar.php?id=<?php echo $id;?>">Modificar Alumno</a></td>
                </tr>
                <?php
            }
        }
        ?>


    </table>
</body>
</html>