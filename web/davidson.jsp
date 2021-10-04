<%-- 
    Document   : davidson
    Created on : 3 de out. de 2021, 19:19:14
    Author     : Davidson Barbosa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Davidson Barbosa</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <main>
            <%if(isSessionActive){%>
            <h1>Davidson Di David Rosa Alves Barbosa</h1>
            <h2><strong>RA:</strong> 1290482013014</h2>
            <h2><strong>Inicio letivo</strong> 1° Sem / 2020</h2>
            <a href="https://github.com/davidson-barbosa" target="_blank">Meu Github</a>
            <table>
                <thead>
                    <tr>
                        <th>Disciplinas</th>
                        <th>Professores</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Programação Orientada a Objetos</td>
                        <td>Ricardo Pupo Larguesa</td>
                    </tr>
                    <tr>
                        <td>Engenharia de Software III</td>
                        <td>Renata Neves Ferreira</td>
                    </tr>
                    <tr>
                        <td>Linguagem de Programação IV - INTERNET</td>
                        <td>Paulo Roberto Tazinazo Candido</td>
                    </tr>
                    <tr>
                        <td>Sistemas Operacionais II</td>
                        <td>Fábio Pessoa de Sá</td>
                    </tr>
                    <tr>
                        <td>Inglês IV</td>
                        <td>Graziela Pigatto Bohn</td>
                    </tr>
                    <tr>
                        <td>Inglês V</td>
                        <td>Graziela Pigatto Bohn</td>
                    </tr>
                    <tr>
                        <td>Banco de Dados</td>
                        <td>Simone Maria Viana Romano</td>
                    </tr>
                </tbody>
            </table>
            <%} else {%>
            <h1 class="error">Por favor realize seu login!</h1>
            <%}%>
        </main>
    </body>
</html>
