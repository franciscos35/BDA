<html>
<body>
<?php
    try {
        $host = "127.0.0.1";
        $user ="root";
        $password = "root";
        $dbname = "proj3";
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $sql = "SELECT * FROM Encomenda;";
        $result = $db->query($sql);
        echo("<table border=\"1\">\n");
        echo("<tr><td>quantidade_da_encomenda</td><td>precos</td><td>P_ID</td></tr>\n");
        foreach($result as $row) { echo("<tr><td>");
            echo($row['quantidade_da_encomenda']);
            echo("</td><td>");
            echo($row['precos']);
            echo("</td><td>");
            echo($row['P_ID']);
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
