<#import "_layout.ftl" as layout />

<header>
    <title>Cadastrar Professor</title>
</header>
<body>
    <form action="/professores" method="post">
        <label>Nome</label>
        <input type="text" placeholder="Insira o nome" name="profNome"></input>

        <p>
            <label>CPF</label>
            <input type="text" placeholder="Insira o CPF" name="profCpf">
        </p>

        <input type="submit" value="Cadastrar">
        <a href="/professores">Voltar</a>
    </form>
</body>

</html>