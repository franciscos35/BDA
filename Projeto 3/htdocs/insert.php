<html>
    <body>
        <?php
            $A_ID = $_REQUEST['A_ID'];
            $localizacao = $_REQUEST['localizacao'];
            $capacidade = $_REQUEST['capacidade'];
            try {
                $host = "127.0.0.1";
                $user ="root";
                $password = "root";
                $dbname = "proj3";
                $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                $sql = "INSERT INTO Arcas (A_ID,localizacao,capacidade) VALUES ('$A_ID', '$localizacao', '&capacidade');";
                echo("<p>$sql</p>");
                $db->query($sql);
                $db = null;
            }
            catch (PDOException $e) {
                echo("<p>ERROR: {$e->getMessage()}<p/>");
            }
        ?>
    </body>
</html>
