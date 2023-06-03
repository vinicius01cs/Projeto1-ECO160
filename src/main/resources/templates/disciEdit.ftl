<#-- @ftlvariable name="disciplina" type="com.example.models.Disciplina" -->

<!DOCTYPE html>
<html>
<header>
    <title>Editar Disciplina</title>
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
    <h1 class="titulo">Editar Disciplina</h1>
    <div class="divCampo">
        <form action="/disciplinas/${disciplina.id}" method="post">
            <label>Código da Disciplina: </label>
            <p></p>
            <input type="text" name="codDisciplina" value="${disciplina.codDisciplina}">
            <p></p>
            <label>Local:</label>
            <p></p>
            <label>Sala</label>
            <input type="radio" id="sala" name="local" value="true">
            <label>Laboratório</label>
            <input type="radio" id="lab" name="local" value="false">
            <p></p>
            <label>Nome do Professor</label>
            <input type="text" name="nomeProf" value="${disciplina.nomeProf}" style="width: 200px">
            <p></p>
            <label>CPF do Professor:</label>
            <input type="text" id="campo-cpf" name="cpfProf" maxlength="14" style="width: 200px" value="${disciplina.cpfProf}">
    </div>
    <div class="divBotoes">
            <input type="submit" name="_action" value="Atualizar" class="botao">
        </form>
        <form action="/disciplinas/${disciplina.id}" method="post">
            <input type="submit" name="_action" value="Excluir" class="botaoVoltar">
        </form>
    </div>
    <script>
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
    .divBotoes{
        display: inline-block;
    }
</style>
</html>