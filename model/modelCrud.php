<?php

require_once "../model/connection.php";
class modelCrud {
    
    function updateData($connection) {

        $id = 0;
        $nome = "Animais Fantasticos";
        $autor = "JK Rowllin";
        $ano = 1997;
        $sinopse = "New Scamander em busca das criaturas magicas mais sensacionais.";
        $categoria = "Aventura";


        $sql = "INSERT INTO tbl_livros_online VALUES ('$id','$nome','$autor','$ano','$sinopse','$categoria')";

        @mysqli_query($connection,$sql);

        exit();
    }

    function returnData($connection) {

        if(!$connection) {
            echo "Problema aqui.";
        }

        $sql = "SELECT * FROM tbl_livros_online";
        $result = mysqli_query($connection,$sql);

        while($fetch = $result->fetch_assoc()) {

                foreach($fetch as $data => $row) {
                    echo $row ." | ";
            }
        }
    }
}
$obj = new modelCrud($connection);
$obj->returnData($connection);