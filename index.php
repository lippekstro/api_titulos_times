<?php
require_once 'clube.php';


if ($_SERVER['REQUEST_URI'] === '/teste_api/clubes') {
    Clube::getAllClubsSimple();
} elseif ($_SERVER['REQUEST_URI'] === '/teste_api/clubesimg'){
    Clube::getAllClubsSimpleImages();
    // A linha abaixo usa uma expressão regular para verificar se a URL da solicitação corresponde ao padrão esperado.
    // O padrão esperado é '/teste_api/clubes/' seguido por um número (\d+), que representa o ID do clube.
    // O resultado correspondente é armazenado em $matches.
} elseif (preg_match('/^\/teste_api\/clubeimg\/(\d+)$/', $_SERVER['REQUEST_URI'], $matches)){
    // Abaixo, extrai o ID do clube do array $matches e converte-o para um número inteiro (intval).
    // O ID do clube é então armazenado na variável $id.
    $id = intval($matches[1]);
    Clube::getClubImageById($id);
} elseif ($_SERVER['REQUEST_URI'] === '/teste_api/clubesall') {
    Clube::getAllClubs();
} elseif (preg_match('/^\/teste_api\/clube\/(\d+)$/', $_SERVER['REQUEST_URI'], $matches)) {
    $id = intval($matches[1]);
    Clube::getClubById($id);
} else {
    header("HTTP/1.1 404 Not Found");
    header('Content-Type: text/html; charset=UTF-8');
    echo json_encode(["error" => "Rota não encontrada"]);
}


// rotas GET
// /clubes -> todos os clubes e suas informacoes basicas
// /clubesall -> todos os clubes com mais detalhes (titulos)
// /clubesimg -> todos os ids e escudos
// /clube/id -> informacoes detalhadas de um clube apenas
// /clubeimg/id -> escudo de um clube apenas

