<html>
    <body>
        <p>Registo gravado com sucesso!</p>
        <?php
            $F_ID = $_POST["F_ID"];
        
            try {
                $host = "127.0.0.1";
                $user ="root";
                $password = "root";
                $dbname = "proj3";
                $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO Fornecedores (F_ID) VALUES ($F_ID);";
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
