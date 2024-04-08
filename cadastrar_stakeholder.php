<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeStakeHolder = $_POST['txtNomeStakeHolder'];
$txtDescricaoStakeHolder = $_POST['txtDescricaoStakeHolder'];


$str_sql_cadastrar_StakeHolder = "inser into `StakeHolders` (`nome`,`descricao`) values ('$txtNomeStakeHolder', '$txtDescricaoStakeHolder');";

try{
    $cadastrar_StakeHolder= = mysql_query($conexao, $str_sql_cadastrar_StakeHolder);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idStakeHolder'] = $ultimo_id;
    die('idStakeHolder: ' . $_SESSION['idStakeHolder']);
} catch (Exception) {
    die('Não foi possivel cadastrar o StakeHolder str sql: ' . $str_sql_cadastrar_StakeHolder);
}
?>