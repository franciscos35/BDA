<html>
    <body>
        <p>Registo gravado com sucesso!</p>
        <?php
            $P_ID = $_POST["P_ID"];
            $tipo = $_POST["tipo"];
            $stock_minimo = $_POST["stock_minimo"];
            $preco_venda = $_POST["preco_venda"];
            $quantidade_stock = $_POST["quantidade_stock"];
            try {
                $host = "127.0.0.1";
                $user ="root";
                $password = "root";
                $dbname = "proj3";
                $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO Produtos (P_ID,tipo,stock_minimo,preco_venda,quantidade_stock) VALUES ($P_ID,'$tipo',$stock_minimo,$preco_venda,$quantidade_stock);";
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
