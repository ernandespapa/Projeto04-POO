<%@page import="br.com.fatecpg.db.Manufacturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabricantes - JAVADB Sample</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <h1>Fabricantes</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>E-mail</th>
            </tr>

            <%try {%>
            <%for (Manufacturer c : Manufacturer.getList()) {%>
            <tr>
                <td><%= c.getId()%></td>
                <td><%= c.getName()%></td>
                <td><%= c.getEmail()%></td>
            </tr>
            <%}%>
            <%} catch (Exception e) {%>
            <tr><td colspan="3">Erro: <%= e.getMessage()%></td></tr>
            <%}%>
        </table>
    </body>
</html>
