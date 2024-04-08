<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomePremissa = $_POST['txtNomePremissa'];
$txtDescricaoPremissa = $_POST['txtDescricaoPremissa'];


$str_sql_cadastrar_premissa = "inser into `premissas` (`nome`,`descricao`) values ('$txtNomePremissa', '$txtDescricaoPremissa');";

try{
    $cadastrar_premissa= = mysql_query($conexao, $str_sql_cadastrar_premissa);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idPremissa'] = $ultimo_id;
    die('idPremissa: ' . $_SESSION['idPremissa']);
} catch (Exception) {
    die('Não foi possivel cadastrar o premissa str sql: ' . $str_sql_cadastrar_premissa);
}
?>