<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeGrupoDeEntrega = $_POST['txtNomeGrupoDeEntrega'];
$txtDescricaoGrupoDeEntrega = $_POST['txtDescricaoGrupoDeEntrega'];


$str_sql_cadastrar_GrupoDeEntrega = "inser into `GrupoDeEntregas` (`nome`,`descricao`) values ('$txtNomeGrupoDeEntrega', '$txtDescricaoGrupoDeEntrega');";

try{
    $cadastrar_GrupoDeEntrega= = mysql_query($conexao, $str_sql_cadastrar_GrupoDeEntrega);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idGrupoDeEntrega'] = $ultimo_id;
    die('idGrupoDeEntrega: ' . $_SESSION['idGrupoDeEntrega']);
} catch (Exception) {
    die('Não foi possivel cadastrar o GrupoDeEntrega str sql: ' . $str_sql_cadastrar_GrupoDeEntrega);
}
?>