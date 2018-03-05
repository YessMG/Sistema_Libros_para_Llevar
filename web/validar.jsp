<%-- 
    Document   : validar
    Created on : 20/02/2017, 07:55:10 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fiendly Books</title>
    </head>
    <body background="fondo3.png">
    <center>
        <h1>Fiendly Books</h1>
        <table>
        <tr>    
            <td><%out.print("Titulo: ");%></td>
            <td><%out.print(request.getParameter("titulo"));%></td>
        </tr>
        <%out.print("<br>");%>
        <tr>    
            <td><%out.print("Editorial: ");%></td>
            <td><%out.print(request.getParameter("editorial"));%></td>
        </tr>
        <%out.print("<br>");%>
        <tr> 
            <td><%out.print("Autor: ");%></td>
            <td><%out.print(request.getParameter("autor"));%></td>
        </tr>
        <%out.print("<br>");%>
        <tr>   
            <td><%out.print("Paginas: ");%></td>
            <td><%out.print(request.getParameter("autor"));%></td>
        </tr>
        <%out.print("<br>");%>
        <tr>
            <%String Genero = (String)request.getParameter("genero");%>
            <td><%out.print("Genero: ");%></td>
            <td><%out.print(Genero);%></td>
        </tr>
        <%out.print("<br>");%>
        <tr>
            <%String Idioma = (String)request.getParameter("idioma");%>
            <td><%out.print("Idioma: ");%></td>
            <td><%out.print(Idioma);%></td>
        </tr>
        <%out.print("<br>");%>
        </table>
        
        <br></br>
        <a href="index.jsp">Regresar</a>
    </center>
    </body>
</html>
