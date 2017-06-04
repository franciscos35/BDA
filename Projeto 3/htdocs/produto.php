<html style="font-family:helvetica;">
    <body>
        <p><h3>Inserir Produto</h3></p>
        <form action="produto_done.php" method="post">
            <p>Nome:<br><input type="text" name="nome"></p>
            <p>Tipo:<br><input type="text" name="tipo"></p>
            <p>Stock mínimo:<br><input type="number" name="stock_minimo"></p>
            <p>Preco de venda:<br><input type="int(11)" name="preco_venda"></p>
            <p>Quantidade em stock:<br><input type="int(11)" name="quantidade_stock"></p>
            <p></p>
            <!--Eu adicionei as Arcas aqui no formulário. -->
             <p><h3>Inserir Arca</h3></p>
             <p></p>
            <p>Localização da Arca:<br><input type="text" name="localizacao"></p> 
            <p>Capacidade da Arca:<br><input type="int(11)" name="capacidade"></p>
           <!-- <p>Temperatura da Arca:<br><input type="int(11)" name="temperatura"></p> -->
            <p>Tipo da Arca:
                <input type="radio" name="a_tipo" value="Frigorífica">Frigorífica
                <input type="radio" name="a_tipo" value="Congeladora">Congeladora
            </p>
            <input type="submit">
        </form>
        <a href="/indice/Indice_insert.php">Voltar</a><br> <!-- Aqui tens que alterar para ser igual ao teu. Isto é onde eu tenho os meus Indices! -->
    </body>
</html>
