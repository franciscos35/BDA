<html>
<body>
<?php
    try {
        $host = "127.0.0.1";
        $user ="root";
        $password = "root";
        $dbname = "proj3";
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $sql = "SELECT * FROM Arcas;";
        $result = $db->query($sql);
        echo("<table border=\"1\">\n");
        echo("<tr><td>A_ID</td><td>localizacao</td><td>capacidade</td></tr>\n");
        foreach($result as $row) { echo("<tr><td>");
            echo($row['A_ID']);
            echo("</td><td>");
            echo($row['localizacao']);
            echo("</td><td>");
            echo($row['capacidade']);
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
