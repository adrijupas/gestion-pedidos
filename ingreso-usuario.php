<?php 
// recogemos datos del formulario e insertamos en la base de datos

// var_dump($_POST);

$nombre_usuario = $_POST['nombre_usuario'];

$email_usuario = $_POST['email_usuario'];

include 'db/conexion.php';

$consulta = "insert into usuarios values(NULL, '$nombre_usuario', '$email_usuario')";

mysqli_query($conexion,$consulta);






?>