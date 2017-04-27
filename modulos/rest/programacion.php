
<?php
require '../../Conexion/Conexion.php';
header("Content-Type: text/html;charset=utf-8");

$idb = Conexion::getConnection();
$sql = "SELECT d.id_dia, tu.id_turno, tr.id_turno_responsabilidades, t.id_tema, r.id_responsabilidad, resp.id_responsable, d.nombre_dia, tu.nombre_turno, t.descripcion, r.nombre_responsabilidad, resp.nombre_responsable 
FROM dia_turno_tema dtt, dia d, turno tu, tema t, responsabilidad r, turno_responsabilidades tr, responsable resp 
WHERE d.id_dia = dtt.id_dia and tu.id_turno = dtt.id_turno and t.id_tema = dtt.id_tema 
and r.id_responsabilidad = tr.id_responsabilidad and dtt.id_dia_turno_tema = tr.id_dia_turno_tema and resp.id_responsable = tr.id_responsable 
order by r.id_responsabilidad";   //prepared statements
$query = $idb->prepare($sql);
$query->execute();
$resultado = $query->fetchAll();

if ($_SERVER['REQUEST_METHOD'] == 'GET') {


    if ($resultado) {

        $datos["estado"] = 1;
        $datos["turno_responsabilidad"] = $resultado;

        print utf8_encode(json_encode($datos));
    } else {
        print json_encode(array(
            "estado" => 2,
            "mensaje" => "Ha ocurrido un error"
        ));
    }
}
?>