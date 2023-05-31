<%@page import="model.Proprietario" %>
<%
    Proprietario uSession = (Proprietario) session.getAttribute("userNameSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CuideDaSuaSaude</title>
    </head>
    <body>
        <%@include file="session/verify.jsp" %>
        <p id="welcome">
            <div>Bem vindo <%= (uSession != null) ? uSession.getNome() : "visitante" %>!</div>
            <h1>Sua saúde está segura, confira como mantê-la assim abaixo:</h1>
            <h1>No dia-a-dia, consumir frutas, verduras, legumes, grãos integrais, castanhas, carnes magras, leites e derivados magros. Doces, frituras e guloseimas também podem fazer parte desta alimentação, desde que consumidos com moderação. O importante é que você tenha prazer ao se alimentar ao invés de culpa.</h1>
            <div><button onclick="window.location.href='session/logout.jsp'">Logout</button></div>
        </p>
        <hr>
        <section id="menu">
            <button class="item-home" onclick="window.location.href='listar.jsp'">LISTAR</button>
        </section>
        
    </body>
</html>
