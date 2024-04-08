<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeBeneficio = $_POST['txtNomeBeneficio'];
$txtDescricaoBeneficio = $_POST['txtDescricaoBeneficio'];


$str_sql_cadastrar_Beneficio = "inser into `Beneficios` (`nome`,`descricao`) values ('$txtNomeBeneficio', '$txtDescricaoBeneficio');";

try{
    $cadastrar_Beneficio= = mysql_query($conexao, $str_sql_cadastrar_Beneficio);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idBeneficio'] = $ultimo_id;
    die('idBeneficio: ' . $_SESSION['idBeneficio']);
} catch (Exception) {
    die('Não foi possivel cadastrar o Beneficio str sql: ' . $str_sql_cadastrar_Beneficio);
}
?>