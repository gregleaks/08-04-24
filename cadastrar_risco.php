<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeRisco = $_POST['txtNomeRisco'];
$txtDescricaoRisco = $_POST['txtDescricaoRisco'];


$str_sql_cadastrar_Risco = "inser into `Riscos` (`nome`,`descricao`) values ('$txtNomeRisco', '$txtDescricaoRisco');";

try{
    $cadastrar_Risco= = mysql_query($conexao, $str_sql_cadastrar_Risco);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idRisco'] = $ultimo_id;
    die('idRisco: ' . $_SESSION['idRisco']);
} catch (Exception) {
    die('Não foi possivel cadastrar o Risco str sql: ' . $str_sql_cadastrar_Risco);
}
?>