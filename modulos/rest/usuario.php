<?php
require '../../Conexion/Conexion.php';
$idb = Conexion::getConnection();
$sql = "SELECT id_cantico, nro_cantico, titulo, letra FROM dbsemanaoracion.cantico WHERE id_semana_oracion = 1";   //prepared statements
$query = $idb->prepare($sql);
$query->execute();
$resultado = $query->fetchAll();


if ($_SERVER['REQUEST_METHOD'] == 'GET') {


    if ($resultado) {

        $datos["estado"] = 1;
        $datos["dia"] = $resultado;

        print json_encode($datos);
    } else {
        print json_encode(array(
            "estado" => 2,
            "mensaje" => "Ha ocurrido un error"
        ));
    }
}
?>