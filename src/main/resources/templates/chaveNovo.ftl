<#-- @ftlvariable name="professor" type="com.example.models.Professor" -->

<#import "_layout.ftl" as layout />

<header>
    <title>Novo empréstimo</title>
</header>
<body>
<form action="/chaves" method="post">
    <p>
        <label>Professor:</label>
        <select id="seletor" name="profNome" onchange="atualizarCpf()">
            <#list professores as professor>
                <option value="${professor.nome}" data-cpf="${professor.cpf}">${professor.nome}</option>
            </#list>
        </select>
    </p>
    <label>CPF</label>
    <input type="text" id="cpf" name="profCpf">
    <p>
        <label>Data emprestimo</label>
        <input type="datetime-local" name="dataEmprestimo">
    </p>
    <p>
        <label>Data devolução</label>
        <input type="datetime-local" name="dataDevolucao">
    </p>
    <input type="submit" value="Cadastrar">
    <a href="/disciplinas">Voltar</a>
</form>
</body>
<script>
    function atualizarCpf() {
        var selectElement = document.querySelector('select[id="seletor"]');
        var cpfInput = document.getElementById('cpf');
        var selectedOption = selectElement.options[selectElement.selectedIndex];
        cpfInput.value = selectedOption.dataset.cpf;
    }
</script>

</html>