<?php

class Conexao
{

    public static function conectar()
    {
        $db_host = 'localhost'; // Host do banco de dados
        $db_name = 'times'; // Nome do banco de dados
        $db_user = 'root'; // Nome de usuário do banco de dados
        $db_pass = ''; // Senha do banco de dados

        $conn = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        return $conn;
    }
}
