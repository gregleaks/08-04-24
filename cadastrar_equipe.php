<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeEquipe = $_POST['txtNomeEquipe'];
$txtDescricaoEquipe = $_POST['txtDescricaoEquipe'];


$str_sql_cadastrar_Equipe = "inser into `Equipes` (`nome`,`descricao`) values ('$txtNomeEquipe', '$txtDescricaoEquipe');";

try{
    $cadastrar_Equipe= = mysql_query($conexao, $str_sql_cadastrar_Equipe);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idEquipe'] = $ultimo_id;
    die('idEquipe: ' . $_SESSION['idEquipe']);
} catch (Exception) {
    die('Não foi possivel cadastrar o Equipe str sql: ' . $str_sql_cadastrar_Equipe);
}
?>