<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <h1>Gestion Pedidos</h1>

    <?php 
        include 'db/conexion.php';

        $consulta = 'SELECT * FROM productos';

        $datos = mysqli_query($conexion,$consulta);
        echo '<ul>';
        while($fila = mysqli_fetch_array($datos)){
            echo '<li>'.$fila['nombre_producto'].$fila['precio_producto']."<input type='checkbox'>".'</li>';
        }
        echo '</ul>';

    ?>

    <form action="ingreso-usuario.php" method="POST">
        <label for="nombre">Nombre</label>
        <input required type="text" name="nombre_usuario" id="nombre">

        <label for="email">email</label>
        <input required type="email" name="email_usuario" id="email">

        <button type="submit">Realizar pedido</button>
    </form>

</body>
</html>