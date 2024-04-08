<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeJustificativa = $_POST['txtNomeJustificativa'];
$txtDescricaoJustificativa = $_POST['txtDescricaoJustificativa'];


$str_sql_cadastrar_Justificativa = "inser into `Justificativas` (`nome`,`descricao`) values ('$txtNomeJustificativa', '$txtDescricaoJustificativa');";

try{
    $cadastrar_Justificativa= = mysql_query($conexao, $str_sql_cadastrar_Justificativa);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idJustificativa'] = $ultimo_id;
    die('idJustificativa: ' . $_SESSION['idJustificativa']);
} catch (Exception) {
    die('Não foi possivel cadastrar o Justificativa str sql: ' . $str_sql_cadastrar_Justificativa);
}
?>