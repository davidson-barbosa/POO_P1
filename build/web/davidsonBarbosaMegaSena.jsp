<%-- 
    Document   : davidsonBarbosaMegaSena
    Created on : 3 de out. de 2021, 19:20:22
    Author     : Davidson Barbosa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ServletContext sc = request.getServletContext();
    List<Integer> numbers = (List) sc.getAttribute(String.valueOf(session.getAttribute("session_name")));
%>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números da sorte</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <main>
            <%if(isSessionActive){%>
            <h1>Sugestão de números MegaSena</h1>
            <table>
                <thead>
                    <tr>
                        <th>MegaSena</th>
                    </tr>
                </thead>
                <tbody>
                    <%for(Integer number : numbers){%>
                    <tr>
                        <td><%=number%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <%} else {%>
            <h1 class="error">Por favor realize seu login.</h1>
            <%}%>
        </main>
    </body>
</html>
