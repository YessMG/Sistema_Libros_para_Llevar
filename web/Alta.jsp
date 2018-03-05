<%--
    Document   : Alta
    Created on : 22/02/2017, 04:19:55 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
        <link href = "css.css" rel = "stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fiendly Books</title>
    </head>
    <body background="fondo3.png">
    <center>
        <h1>Fiendly Books</h1>
        <% 
        String Genero = (String)request.getParameter("genero");
        String Idioma = (String)request.getParameter("idioma");
        %>
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
            <td><%out.print(request.getParameter("paginas"));%></td>
        </tr>
        <%out.print("<br>");%>
        <tr>
            <td><%out.print("Genero: ");%></td>
            <td><%out.print(Genero);%></td>
        </tr>
        <%out.print("<br>");%>
        <tr>
            <td><%out.print("Idioma: ");%></td>
            <td><%out.print(Idioma);%></td>
        </tr>
        <%out.print("<br>");%>
        </table>
        <br></br>
        
<%@ page import ="java.sql.*" %>
<%
try{
    String titulo = request.getParameter("titulo");
    String editorial = request.getParameter("editorial");
    String autor = request.getParameter("autor");
        String paginas = request.getParameter("paginas");
        String genero = request.getParameter("genero");
        String idioma = request.getParameter("idioma");
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventario","root","160604");
    Statement stmt = conn.createStatement();
    int n = stmt.executeUpdate("INSERT INTO libros VALUES('" + titulo + "', '" + editorial + "', '" + autor + "', '" + paginas + "', '" + genero + "', '" + idioma + "');" );
    
    if(n == 1)
        out.println("Registro válido");
    else
        out.println("Registro no válido");
}
catch(Exception e) {
    out.println("Algo malo sucedió. Intentar de nuevo");
}
%>
           <br></br>
           <br></br>
        <a href="index.jsp">Regresar</a>
    </center>
    </body>
</html>