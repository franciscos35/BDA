<html>
<body>
<?php
    try {
        $host = "127.0.0.1";
        $user ="root";
        $password = "root";
        $dbname = "proj3";
        $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $sql = "SELECT * FROM Produtos;";
        $result = $db->query($sql);
        echo("<table border=\"1\">\n");
        echo("<tr><td>P_ID</td><td>tipo</td><td>nome</td><td>stock_minimo</td><td>preco_venda</td><td>quantidade_stock</td></tr>\n");
        foreach($result as $row) { echo("<tr><td>");
            echo($row['P_ID']);
            echo("</td><td>");
            echo($row['tipo']);
            echo("</td><td>");
            echo($row['nome']);
            echo("</td><td>");
            echo($row['stock_minimo']);
            echo("</td><td>");
            echo($row['preco_venda']);
            echo("</td><td>");
            echo($row['quantidade_stock']);
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
