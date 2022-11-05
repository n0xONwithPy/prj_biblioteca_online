<?php

require_once "../model/connection.php";

class dataAPI {

    function updateData($connection = null) {

        function __construct($connection) {   
            $this->conexao = $connection;
        }


        if(!$connection) {
            echo "Erro.";
        }

        $id = 0;
        $nome = "Animais Fantasticos";
        $autor = "JK Rollings";
        $ano = 1997;
        $sinopse = "New Scamander em busca das criaturas magicas mais sensacionais.";
        $categoria = "Aventura";


        $sql = "INSERT INTO tbl_livros_online VALUES ('$id','$nome','$autor','$ano','$sinopse','$categoria')";
        @mysqli_query($connection,$sql);

    }
}

$obj = new dataAPI();
$obj->updateData($connection);