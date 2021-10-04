<%-- 
    Document   : index
    Created on : 3 de out. de 2021, 17:06:08
    Author     : Davidson Barbosa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ServletContext sc = request.getServletContext();
    List<String> users = (List) sc.getAttribute("users_active_on_server");
%>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
            String mensagem = "";
            if (users == null) {
                mensagem = "Não há usuários logados no momento.";
            } else if (users.size() == 1) {
                mensagem = "Usuário on " + users.size();
            } else {
                mensagem = "Usuários on " + users.size();
            }
        %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <main>
            <%if(isSessionActive && !users.isEmpty()){%>
            <table>
                <thead>
                    <tr>
                        <th>
                            Usuários Online
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <%for(String user : users){%>
                    <tr>
                        <td>
                            <b><%=user%></b>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <%}%>
            <h1><%=mensagem%></h1>
        </main>
    </body>
</html>
