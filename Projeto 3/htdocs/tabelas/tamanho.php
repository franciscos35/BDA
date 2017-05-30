<html>
<body>
<?php
    try {
        $host = "127.0.0.1";
        $user ="root";
        $password = "root";
        $dbname = "proj3";
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $sql = "SELECT * FROM Tamanho;";
        $result = $db->query($sql);
        echo("<table border=\"1\">\n");
        echo("<tr><td>area</td><td>n_caixas</td><td>tamanho</td><td>l_nome</td></tr>\n");
        foreach($result as $row) { echo("<tr><td>");
            echo($row['area']);
            echo("</td><td>");
            echo($row['n_caixas']);
            echo("</td><td>");
            echo($row['tamanho']);
            echo("</td><td>");
            echo($row['l_nome']);
            echo("</td></tr>\n");
        }
        echo("</table>\n");
        $db = null;
    }
    catch (PDOException $e) {
        echo("<p>ERROR: {$e->getMessage()}<p/>");
    }
?>
</body>
</html>
