<#-- @ftlvariable name="professor" type="com.example.models.Professor" -->

<!DOCTYPE html>
<html>
    <header>
        <title>${professor.nome}</title>
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
    <div class="divCampo">
        <p>
            <label>Nome</label>
            <label>${professor.nome}</label>
        </p>
        <p class="separador"></p>
        <p>
            <label>CPF</label>
            <label>${professor.cpf}</label>
        </p>
    </div>
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
        .divCampo{
            width: 100%;
            background-color: #ddd;
        }
        .divCampo label{
            margin-left: 20px;
            font-size: 20px;
        }
        .separador {
            border: 1px solid #286655;
            margin-right: 30px;
            margin-left: 30px;
            border-radius: 35px;
        }
    </style>
</html>