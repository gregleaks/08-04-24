<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeProjeto = $_POST['txtNomeProjeto'];
$txtDescricaoProjeto = $_POST['txtDescricaoProjeto'];


$str_sql_cadastrar_projeto = "inser into `projetos` (`nome`,`descricao`) values ('$txtNomeProjeto', '$txtDescricaoProjeto');";

try{
    $cadastrar_projeto= = mysql_query($conexao, $str_sql_cadastrar_projeto);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idProjeto'] = $ultimo_id;
    die('idProjeto: ' . $_SESSION['idProjeto']);
} catch (Exception) {
    die('Não foi possivel cadastrar o projeto str sql: ' . $str_sql_cadastrar_projeto);
}
?>