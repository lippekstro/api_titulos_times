<?php
require_once 'clube.php';


if ($_SERVER['REQUEST_URI'] === '/teste_api/clubes') {
    Clube::getAllClubsSimple();
} elseif ($_SERVER['REQUEST_URI'] === '/teste_api/clubesAll') {
    Clube::getAllClubs();
    // A linha abaixo usa uma expressão regular para verificar se a URL da solicitação corresponde ao padrão esperado.
    // O padrão esperado é '/teste_api/clubes/' seguido por um número (\d+), que representa o ID do clube.
    // O resultado correspondente é armazenado em $matches.
} elseif (preg_match('/^\/teste_api\/clubes\/(\d+)$/', $_SERVER['REQUEST_URI'], $matches)) {
    // Extrai o ID do clube do array $matches e converte-o para um número inteiro (intval).
    // O ID do clube é então armazenado na variável $id.
    $id = intval($matches[1]);
    Clube::getClubById($id);
} else {
    header("HTTP/1.1 404 Not Found");
    echo json_encode(["error" => "Rota não encontrada"]);
}
