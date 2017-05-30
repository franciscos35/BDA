<html>
    <body>
        <p>Registo gravado com sucesso!</p>
        <?php
            $A_ID = $_POST["A_ID"];
            $localizacao = $_POST["localizacao"];
            $capacidade = $_POST["capacidade"];
            
            try {
                $host = "127.0.0.1";
                $user ="root";
                $password = "root";
                $dbname = "proj3";
                $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "UPDATE Arcas SET localizacao = '$localizacao', capacidade = $capacidade WHERE A_ID = $A_ID;";
                echo("<p>$sql</p>");
                $db->query($sql);
                $db = null;
            }
            catch (PDOException $e) {
                echo("<p>ERROR: {$e->getMessage()}<p/>");
            }
            ?>
        <p><a href="/">Voltar</a></p>
    </body>
</html>
