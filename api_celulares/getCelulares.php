<?php

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $dbname = 'celularesdb';

    $conn = new mysqli('localhost', 'root', '', 'celularesdb');

    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de conexión: ' . $conn->connect_error]);
        exit;
    }


    $sql = "SELECT * FROM celulares";
    $result= $conn->query($sql);

    $celulares = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $celulares[] = $row;
        }
    }


    $conn->close();


    header("Content-Type: application/json");
    echo json_encode($celulares);


?>

