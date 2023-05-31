<%@page import="model.Proprietario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Proprietario p = (Proprietario)request.getAttribute("prop");
%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Animaland</title>
    </head>
    <body>
        <h1>EDITAR</h1>
        <hr>
        <form action="CadastroProprietario" method="post">
            
            <input type="text" name="id" value="<%= p.getIdProprietario() %>" readonly>
            
            <br><br>
            
            <input type="text" name="nome" value="<%= p.getNome() %>" placeholder="Nome" required>
            
            <br><br>
            
            <input type="text" name="cpf" value="<%= p.getCpf() %>" placeholder="CPF" required>
        
            <br><br>
            
            <input type="number" name="numero" value="<%= p.getNumero() %>" placeholder="Número" required>
            
            <br><br>
            
            <input type="number" name="cep" value="<%= p.getNumero() %>" placeholder="CEP" required>
            
            <br><br>
            
            <input type="password" name="senha" value="<%= p.getCpf() %>" placeholder="senha" required>
        
            <br><br>
            
            <select name="cidade" required>
                <option value="<%= p.getCidade() %>"><%= p.getCidade() %></option>
                <option value="Porto Alegre">Porto Alegre</option>
                <option value="Viamão">Viamão</option>
                <option value="Alvorada">Alvorada</option>
                <option value="Gravataí">Gravataí</option>
                <option value="Sapucaia">Sapucaia</option>
                <option value="Guaíba">Guaíba</option>
            </select>
            
            <br><br>
            
            <input type="submit" value="Atualizar">
        </form>
        <br>
        <a href="home.jsp">Página Inicial</a>
    </body>
</html>
