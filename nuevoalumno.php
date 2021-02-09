<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="insertaralumno.php" method="post" >
        <div>
            <label for="nombre">Nombre</label>
            <input type="text" name="nombre" id="nombre">
            <br>
            <label for="apellidos">Apellidos</label>
            <input type="text" name="apellidos" id="apellidos">
            <br>
            <label for="nota">Nota</label>
            <input type="text" name="nota" id="nota">
            <br>
            <button type="submit">Nuevo</button>
        </div>

    </form>
</body>
</html>