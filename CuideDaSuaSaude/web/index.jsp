<%
    if(session.getAttribute("userNameSession") != null){
        response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css"/>
        <title>CuideDaSuaSaude</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="verifica_usuario.java" method="post" id="form-login">
            <img src="img/icone.jpg" alt="Logotipo" width="250"/>
            <br>
            
            <input type="text" name="user" id="user" placeholder="Insira o nome de usuário" required>
            
            <br>
            
            <input type="password" name="pass" id="pass" placeholder="Insira sua senha" required>
            
            <br>
            
            <input type="submit" value="Entrar">
            <button class="item-home" onclick="window.location.href='cadastro.jsp'">Cadastrar</button>
        </form>
    </body>
</html>
