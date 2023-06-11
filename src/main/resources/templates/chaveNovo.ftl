<#-- @ftlvariable name="professor" type="com.example.models.Professor" -->

<#import "_layout.ftl" as layout />

<header>
    <title>Novo empréstimo</title>
</header>
<body>
    <div>
        <nav class="menu">
            <ul>
                <li><a href="/">Inicio</a></li>
                <li><a href="/professores">Professores</a></li>
                <li><a href="/disciplinas">Disciplinas</a></li>
                <li><a href="/chaves">Emprestimos de chaves</a></li>
            </ul>
        </nav>
    </div>
<form action="/chaves" method="post" onsubmit="return verificarCampos()">
    <h1 class="titulo">Cadastrar novo empréstimo</h1>
    <div class="divCampo">
        <label>Professor:</label>
        <select id="selectProf" name="profNome" onchange="atualizarCpf()" class="select">
            <option value=""></option>
            <#list professores as professor>
                <option value="${professor.nome}" data-cpf="${professor.cpf}">${professor.nome}</option>
            </#list>
        </select>
        <p></p>
        <label>CPF</label>
        <input type="text" id="campo-cpf" name="profCpf" style="width: 200px" maxlength="14">
        <p></p>
            <label>Data do empréstimo: </label>
            <input type="datetime-local" name="dataEmprestimo">
        <p></p>
            <label>Data da devolução: </label>
            <input type="datetime-local" name="dataDevolucao">
        <p></p>
    </div>
    <input type="submit" value="Cadastrar" class="botao">
    <a href="/disciplinas" class="botaoVoltar">Voltar</a>
</form>
</body>
<script>
    function verificarCampos() {
        var camposPreenchidos = true;

        // Verificar o campo Professor
        var professorSelect = document.getElementById("selectProf");
        if (professorSelect.value === "") {
            camposPreenchidos = false;
        }

        // Verificar o campo CPF
        var cpfInput = document.getElementById("campo-cpf");
        if (cpfInput.value === "") {
            camposPreenchidos = false;
        }

        // Verificar o campo Data do empréstimo
        var dataEmprestimoInput = document.getElementsByName("dataEmprestimo")[0];
        if (dataEmprestimoInput.value === "") {
            camposPreenchidos = false;
        }

        // Verificar o campo Data da devolução
        var dataDevolucaoInput = document.getElementsByName("dataDevolucao")[0];
        if (dataDevolucaoInput.value === "") {
            camposPreenchidos = false;
        }
        // Exibir mensagem de erro, caso algum campo esteja vazio
        if (!camposPreenchidos) {
            alert("Por favor, preencha todos os campos.");
        }
        // Validar se a data de devolução é inferior à data de empréstimo
        var dataEmprestimo = new Date(dataEmprestimoInput.value);
        var dataDevolucao = new Date(dataDevolucaoInput.value);
        if (dataDevolucao < dataEmprestimo) {
            camposPreenchidos = false;
            alert("A data de devolução deve ser posterior à data de empréstimo.");
        }

        return camposPreenchidos;
    }
    function atualizarCpf() {
        var select = document.getElementById("selectProf");
        var cpfInput = document.getElementById("campo-cpf");
        var selectedOption = select.options[select.selectedIndex];
        var cpf = selectedOption.getAttribute("data-cpf");
        cpfInput.value = cpf;
    }
    // Função para aplicar a máscara de CPF
    function formatarCPF(cpf) {
        cpf = cpf.replace(/\D/g, ''); // Remove todos os caracteres não numéricos
        cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2'); // Insere o primeiro ponto
        cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2'); // Insere o segundo ponto
        cpf = cpf.replace(/(\d{3})(\d{1,2})$/, '$1-$2'); // Insere o traço
        return cpf;
    }

    // Obter o campo de CPF
    const campoCPF = document.getElementById('campo-cpf');

    // Adicionar um ouvinte de eventos ao campo de CPF
    campoCPF.addEventListener('input', function() {
        const cpfDigitado = campoCPF.value;
        const cpfFormatado = formatarCPF(cpfDigitado);
        campoCPF.value = cpfFormatado;
    });
</script>
<style>
    body {
        margin: 0;
        background-color: #f8f8f8;
    }
    nav.menu {
        position: static;
        width: 100%;
        background-color: #f0f2e9;
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    }

    .menu ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .menu li {
        display: inline-block;
    }

    .menu a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: #333;
    }

    .menu a:hover {
        background-color: #807675;
        color: #f8efea;
    }

    .titulo{
        text-align: center;
    }

    .botaoVoltar {
        background-color: #807675;
        border: none;
        color: #f8efea;
        padding: 16px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-left: 20px;
        margin-top: 10px;
        margin-right: 7px;
        transition-duration: 0.4s;
        cursor: pointer;
    }

    .botaoVoltar:hover{
        background-color: #0f020a;
        color: #f8efea;
    }
    .botao{
        background-color: #286655;
        border: none;
        color: #f8efea;
        padding: 16px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-left: 20px;
        margin-top: 10px;
        margin-right: 7px;
        transition-duration: 0.4s;
        cursor: pointer;
    }

    .botao:hover{
        background-color: #98a587;
        color: #0f020a;
    }
    .divCampo{
        width: 100%;

        background-color: #ddd;
    }
    .divCampo label{
        margin-left: 20px;
        font-size: 20px;
    }
    .divCampo input[type=text]{
        width: 40%;
        padding: 12px 20px;
        margin-left: 20px;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
    }

    .select {
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        background-color: #fff;
        color: #333;
        width: 100px;
        height: 30px
    }

    .select:focus {
        outline: none;
        border-color: #286655;
        box-shadow: 0 0 0 2px #286655;
    }
</style>
</html>