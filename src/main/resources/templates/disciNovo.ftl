<#-- @ftlvariable name="professor" type="com.example.models.Professor" -->

<#import "_layout.ftl" as layout />

<header>
    <title>Cadastrar Disciplina</title>
</header>
<body>
<form action="/disciplinas" method="post">
    <p>
        <label>Codigo da Disciplina</label>
        <input type="text" name="disciCod">
    </p>
    <p>
        <div>
            <p>
                <label>Local:</label>
            </p>
            <label>sala</label>
            <input type="radio" id="sala" name="local" value="true">
            <label>lab</label>
            <input type="radio" id="lab" name="local" value="false">
        </div>
    </p>
    <p>
        <label>Professor:</label>
        <select id="selectProf" name="profNome" onchange="atualizarCpf()">
            <#list professores as professor>
                <option value="${professor.nome}" data-cpf="${professor.cpf}">${professor.nome}</option>
            </#list>
        </select>
    </p>

    <label>CPF</label>
    <input type="text" id="cpf" name="profCpf">

    <input type="submit" value="Cadastrar">
    <a href="/disciplinas">Voltar</a>
</form>
<script>
    function atualizarCpf() {
        var select = document.getElementById("selectProf");
        var cpfInput = document.getElementById("cpf");
        var selectedOption = select.options[select.selectedIndex];
        var cpf = selectedOption.getAttribute("data-cpf");
        cpfInput.value = cpf;
    }
</script>
</body>
</html>