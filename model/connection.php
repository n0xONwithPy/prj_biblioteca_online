<?php

define ('HOST','localhost');
define ('USER','root');
define ('PW','');
define ('DB','db_biblioteca_online');

$connection = mysqli_connect(HOST,USER,PW,DB);

    if(!$connection)
    {
        throw new Exception("Falha.", 500);   
    }
        
    #echo "Conectado com sucesso a Base de Dados.";
