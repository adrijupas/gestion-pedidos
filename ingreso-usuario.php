<?php 
// recogemos datos del formulario e insertamos en la base de datos

$nombre_usuario = $_POST['nombre_usuario'];

$email_usuario = $_POST['email_usuario'];

include 'db/conexion.php';


// sql para insertar usuario
$insertar_usuario = "insert into usuarios values(NULL, '$nombre_usuario', '$email_usuario')";
// ejecuto insercion del usuario
mysqli_query($conexion,$insertar_usuario);
// obtengo el id usuario
$id_usuario = mysqli_insert_id($conexion);


//sql para insertar pedidos
$insertar_pedido = "insert into pedidos values (NULL, $id_usuario,NULL,'no')";
// ejecuto insercion del pedido
mysqli_query($conexion,$insertar_pedido);
//obtengo el id del pedido
$id_pedido = mysqli_insert_id($conexion);
// saco por pantalla como prueba
echo "Hola $nombre_usuario tienes un id  $id_usuario y tu numero de pedido es $id_pedido"


?>