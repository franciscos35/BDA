<html>
    <body>
        <p>Registo gravado com sucesso!</p>
        <?php
            $l_nome = $_POST["l_nome"];
            $horario = $_POST["horario"];
            $localizacao = $_POST["localizacao"];
            $funcionarios = $_POST["funcionarios"];
            try {
                $host = "127.0.0.1";
                $user ="root";
                $password = "root";
                $dbname = "proj3";
                $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO Loja (l_nome,horario,localizacao,funcionarios) VALUES ('$l_nome',$horario,'$localizacao','$funcionarios');";
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
