<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeObjetivoSmart = $_POST['txtNomeObjetivoSmart'];
$txtDescricaoObjetivoSmart = $_POST['txtDescricaoObjetivoSmart'];


$str_sql_cadastrar_ObjetivoSmart = "inser into `ObjetivoSmarts` (`nome`,`descricao`) values ('$txtNomeObjetivoSmart', '$txtDescricaoObjetivoSmart');";

try{
    $cadastrar_ObjetivoSmart= = mysql_query($conexao, $str_sql_cadastrar_ObjetivoSmart);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idObjetivoSmart'] = $ultimo_id;
    die('idObjetivoSmart: ' . $_SESSION['idObjetivoSmart']);
} catch (Exception) {
    die('Não foi possivel cadastrar o ObjetivoSmart str sql: ' . $str_sql_cadastrar_ObjetivoSmart);
}
?>