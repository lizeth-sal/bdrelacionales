<?php

header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'DELETE') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo método DELETE es permitido']);
    exit();
}

require 'conexionSakila.php';

$input = json_decode(file_get_contents('php://input'), true);

if (!isset($input["id"])) {
    http_response_code(400);
    echo json_encode(["error" => "ID no proporcionado"]);
    exit();
}

$id = intval($input["id"]);

$query = "DELETE FROM celulares WHERE id = ?";

$st = $conn->prepare($query);
if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Ocurrió un error en la consulta", "detalle" => $conn->error]);
    exit();
}

$st->bind_param("i", $id);
$st->execute();

if ($st->affected_rows > 0) {
    echo json_encode(["mensaje" => "Celular eliminado con éxito"]);
} else {
    http_response_code(404);
    echo json_encode(["error" => "No se encontró el celular con ID $id"]);
}

$st->close();
$conn->close();

?>
