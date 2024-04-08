<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeProduto = $_POST['txtNomeProduto'];
$txtDescricaoProduto = $_POST['txtDescricaoProduto'];


$str_sql_cadastrar_produto = "inser into `produtos` (`nome`,`descricao`) values ('$txtNomeProduto', '$txtDescricaoProduto');";

try{
    $cadastrar_produto= = mysql_query($conexao, $str_sql_cadastrar_produto);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idProduto'] = $ultimo_id;
    die('idProduto: ' . $_SESSION['idProduto']);
} catch (Exception) {
    die('Não foi possivel cadastrar o produto str sql: ' . $str_sql_cadastrar_produto);
}
?>