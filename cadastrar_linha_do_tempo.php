<?php 
require_once('./conexao.php'); //chamada de outro arquivo
$txtNomeLinhaDoTempo = $_POST['txtNomeLinhaDoTempo'];
$txtDescricaoLinhaDoTempo = $_POST['txtDescricaoLinhaDoTempo'];


$str_sql_cadastrar_LinhaDoTempo = "inser into `LinhaDoTempos` (`nome`,`descricao`) values ('$txtNomeLinhaDoTempo', '$txtDescricaoLinhaDoTempo');";

try{
    $cadastrar_LinhaDoTempo= = mysql_query($conexao, $str_sql_cadastrar_LinhaDoTempo);
    $ultimo_id = $conexao->insert_id;
    $_SESSION['idLinhaDoTempo'] = $ultimo_id;
    die('idLinhaDoTempo: ' . $_SESSION['idLinhaDoTempo']);
} catch (Exception) {
    die('Não foi possivel cadastrar o LinhaDoTempo str sql: ' . $str_sql_cadastrar_LinhaDoTempo);
}
?>