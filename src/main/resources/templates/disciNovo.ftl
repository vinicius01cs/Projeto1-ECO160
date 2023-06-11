<#-- @ftlvariable name="professor" type="com.example.models.Professor" -->

<#import "_layout.ftl" as layout />

<header>
    <title>Cadastrar Disciplina</title>
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
    <form action="/disciplinas" method="post" onsubmit="return verificarCampos()">
        <h1 class="titulo">Cadastrar Disciplina</h1>
        <div class="divCampo">
            <label>Codigo da Disciplina:</label>
            <p></p>
            <input type="text" name="disciCod" id="disciCod">
            <p></p>
            <label>Local:</label>
            <p></p>
            <label>Sala</label>
                <input type="radio" id="sala" name="local" value="true">
            <label>Laboratório</label>
                <input type="radio" id="lab" name="local" value="false">
            <p></p>
            <label>Professor:</label>
            <select id="selectProf" name="profNome" onchange="atualizarCpf()" class="select">
                <option></option>
                <#list professores as professor>
                    <option value="${professor.nome}" data-cpf="${professor.cpf}">${professor.nome}</option>
                </#list>
            </select>
            <p></p>
            <label>CPF</label>
            <p></p>
            <input type="text" id="campo-cpf" name="profCpf" style="width: 200px" maxlength="14">
        </div>
        <input type="submit" value="Cadastrar" class="botao">
        <a href="/disciplinas" class="botaoVoltar">Voltar</a>
    </form>
    <script>
        function verificarCampos() {
            var camposPreenchidos = true;

            var disciCod = document.getElementById("disciCod");
            if (disciCod.value === "") {
                camposPreenchidos = false;
            }

            var localSelect = document.querySelector('input[name="local"]:checked');
            if(!localSelect){
                camposPreenchidos = false
            }


            var professorSelect = document.getElementById("selectProf");
            if (professorSelect.value === "") {
                camposPreenchidos = false;
            }


            var cpfInput = document.getElementById("campo-cpf");
            if (cpfInput.value === "") {
                camposPreenchidos = false;
            }
            if (!camposPreenchidos) {
                alert("Por favor, preencha todos os campos.");
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
</body>
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