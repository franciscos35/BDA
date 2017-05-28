<html>
<body>
<?php
    try {
        $host = "127.0.0.1";
        $user ="root";
        $password = "root";
        $dbname = "proj3";
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $sql = "SELECT * FROM Contrato;";
        $result = $db->query($sql);
        echo("<table border=\"1\">\n");
        echo("<tr><td>localizacao_servicos</td><td>P_ID</td><td>F_ID</td></tr>\n");
        foreach($result as $row) { echo("<tr><td>");
            echo($row['localizacao_servicos']);
            echo("</td><td>");
            echo($row['P_ID']);
            echo("</td><td>");
            echo($row['F_ID']);
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
