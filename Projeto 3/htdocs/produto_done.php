<html style="font-family:helvetica;">
    <body>
        <?php
            $nome = $_POST["nome"];
            $tipo = $_POST["tipo"];
            $stock_minimo = $_POST["stock_minimo"];
            $preco_venda = $_POST["preco_venda"];
            $quantidade_stock = $_POST["quantidade_stock"];
            $A_ID = $_POST["A_ID"];
            $a_tipo =$_POST["a_tipo"];
            try {
                $host = "127.0.0.1";
                $user ="root";
                $password = "root";
                $dbname = "proj3";
                $db = new PDO("mysql:host=$host;port=3306;dbname=$dbname", $user, $password);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO Produtos (nome,tipo,stock_minimo,preco_venda,quantidade_stock, A_ID) VALUES ('$nome','$tipo',$stock_minimo,$preco_venda,$quantidade_stock, $A_ID); 
                #No formulário de inserção dos Produtos as Arcas. Vê se contigo funciona!!
                       INSERT INTO Arcas(localizacao, capacidade, a_tipo) VALUES ($localizacao,$capacidade,$a_tipo);";
                echo("<p>$sql</p>");
                $db->query($sql);
                $db = null;
            }
            catch (PDOException $e) {
                echo("<p>ERROR: {$e->getMessage()}<p/>");
            }
            ?>
        <p><a href="/Insert/produto.php">Voltar</a></p>
    </body>
</html>
