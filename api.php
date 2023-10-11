<?php

$db_host = 'localhost'; // Host do banco de dados
$db_name = 'times'; // Nome do banco de dados
$db_user = 'root'; // Nome de usuário do banco de dados
$db_pass = ''; // Senha do banco de dados

$conn = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$query = "
    SELECT
        cl.nome as Clube,
        cl.fundacao as Fundação,
        cl.estadio as Estádio,
        cl.imagem as Time_Simbolo,
        cl.cores as Cores,
        c.nome as Campeonato,
        c.imagem as Campeonato_Taça,
        tt.qntd as Títulos
    FROM
        clube as cl
    JOIN
        campeonato as c
    JOIN
        time_titulo as tt
    ON
        tt.id_time = cl.id AND tt.id_campeonato = c.id
";

$stmt = $conn->prepare($query);
$stmt->execute();
$times = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Organize os dados para criar um array de clubes com títulos
$clubes = [];

foreach ($times as $time) {
    $clubeNome = $time['Clube'];

    // Se o clube ainda não existe no array $clubes, crie uma entrada para ele
    if (!isset($clubes[$clubeNome])) {
        $clubes[$clubeNome] = [
            'Clube' => $clubeNome,
            'Fundação' => $time['Fundação'],
            'Estádio' => $time['Estádio'],
            'Escudo' => $time['Time_Simbolo'],
            'Cores' => $time['Cores'],
            'Títulos' => []
        ];
    }

    // Adicione informações de título ao clube como um array
    $clubes[$clubeNome]['Títulos'][] = [
        'Campeonato' => $time['Campeonato'],
        'Imagem' => $time['Campeonato_Taça'],
        'Qntd' => $time['Títulos']
    ];
}

// Reorganize os clubes em uma lista
$clubes = array_values($clubes);

// Configuração do cabeçalho para permitir acesso a partir de qualquer origem (CORS)
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Defina a resposta HTTP para 200 OK
http_response_code(200);

// Crie um array associativo com os clubes
$response = ['clubes' => $clubes];

// Converta o array em formato JSON
echo json_encode($response);
