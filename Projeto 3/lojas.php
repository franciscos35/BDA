<html style="font-family:helvetica;">
<body>
<p><h3>Lojas</h3></p>
<?php
    try {
        $host = "127.0.0.1";
        $user ="root";
        $password = "root";
        $dbname = "proj3";
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $sql = "SELECT l.l_nome, l.horario, l.localizacao l.funcionarios, t.area, t.n_caixas, t.tamanho FROM Loja l LEFT Join Tamanho as t on l.size_id = t.size_id;";
        $result = $db->query($sql);
        echo("<table border=\"1\">\n");
        echo("<tr><td>Nome</td><td>Horário</td><td>Localização</td><td>Funcionários</td><td>Área</td><td>Nº de Caixas</td><td>Tamanho</td></tr>\n");
        foreach($result as $row) { echo("<tr><td>");
            echo($row['l_nome']);
            echo("</td><td>");
            echo($row['horario']);
            echo("</td><td>");
            echo($row['localizacao']);
            echo("</td><td>");
            echo($row['funcionarios']);
            echo("</td><td>");
            echo($row['area']);
            echo("</td><td>");
            echo($row['n_caixas']);
            echo("</td><td>");
            echo($row['tamanho']);
            echo("</td><td>");
        }
        echo("</table>\n");
        $db = null;
    }
    catch (PDOException $e) {
        echo("<p>ERROR: {$e->getMessage()}<p/>");
    }
?>
<p><a href="/home.php">Voltar</a></p>
</body>
</html>
