<%@ page language="java"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%> 
<%@ page import = "java.sql.ResultSet"%> 
<%@ page import = "java.sql.Statement"%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
        <link href = "css.css" rel = "stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Friendly Books</title>
    </head>
    <body background="fondo3.png">
    <center>
        <h1>Friendly Books</h1>
        <br></br>
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
    String codigo = request.getParameter("cod");
    
    
    int n = stmt.executeUpdate("delete from libros where titulo='" + codigo + "'" );
    
    if(n == 1)
        out.println("Registro eliminado");
    else
        out.println("Registro no eliminado");
}
catch(Exception e) {
    out.println("Algo malo sucedió. Intentar de nuevo");
}
%>
    <br></br> 
    <a href="index.jsp">Regresar</a>
    </center>
    </body>
</html>
