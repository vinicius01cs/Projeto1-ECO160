<#import "_layout.ftl" as layout />

<header>
    <title>Cadastrar Professor</title>
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

    <form action="/professores" method="post">
        <h1 class="titulo">Cadastrar Professor</h1>
        <div class="divCampo">
            <label>Nome</label>
            <p></p>
            <input type="text" placeholder="Insira o nome" name="profNome">
            <p></p>
            <label>CPF</label>
            <p></p>
            <input type="text" placeholder="Insira o CPF" name="profCpf" id="campo-cpf" maxlength="14">
        </div>
        <input type="submit" value="Cadastrar" class="botao">
        <a href="/professores" class="botaoVoltar">Voltar</a>
    </form>

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
</style>
</html>