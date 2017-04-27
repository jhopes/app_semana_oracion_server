<?php
require '../../Conexion/Conexion.php';
$idb = Conexion::getConnection();
$sql = "SELECT c.id_cantico, c.nro_cantico, c.titulo, c.letra 
FROM semana_oracion so, cantico c  
WHERE so.id_semana_oracion = c.id_semana_oracion 
AND trim(date_format(so.fecha_inicio,'%Y'))= trim(DATE_FORMAT(SYSDATE(), '%Y'))";   //prepared statements
$query = $idb->prepare($sql);
$query->execute();
$resultado = $query->fetchAll();


if ($_SERVER['REQUEST_METHOD'] == 'GET') {


    if ($resultado) {

        $datos["estado"] = 1;
        $datos["cantico"] = $resultado;

        print json_encode($datos);
    } else {
        print json_encode(array(
            "estado" => 2,
            "mensaje" => "Ha ocurrido un error"
        ));
    }
}
?>