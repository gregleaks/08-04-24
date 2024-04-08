<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeRestricao = $_POST['txtNomeRestricao'];
$txtDescricaoRestricao = $_POST['txtDescricaoRestricao'];


$str_sql_cadastrar_Restricao = "inser into `Restricaos` (`nome`,`descricao`) values ('$txtNomeRestricao', '$txtDescricaoRestricao');";

try{
    $cadastrar_Restricao= = mysql_query($conexao, $str_sql_cadastrar_Restricao);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idRestricao'] = $ultimo_id;
    die('idRestricao: ' . $_SESSION['idRestricao']);
} catch (Exception) {
    die('Não foi possivel cadastrar o Restricao str sql: ' . $str_sql_cadastrar_Restricao);
}
?>