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
        <h1>fiendly Books</h1>  
        <br></br> 
 <%
try
{
   // Conexion con bd
   Class.forName("org.gjt.mm.mysql.Driver");
   Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventario","root","160604");
   if (!conexion.isClosed())
   {
      // La consulta
      Statement st = conexion.createStatement();
      ResultSet rs = st.executeQuery("select * from libros"  );
     
      

      // Ponemos los resultados en un table de html
      out.println("<table border=\"1\"><tr><td>Titulo</td><td>Editorial</td><td>Autor</td><td>Paginas</td><td>Genero</td><td>Idioma</td><td>eliminar</td></tr>");
      while (rs.next())
      {
         out.println("<tr>");
         out.println("<td>"+rs.getObject("titulo")+"</td>");
         out.println("<td>"+rs.getObject("editorial")+"</td>");
         out.println("<td>"+rs.getObject("autor")+"</td>");
         out.println("<td>"+rs.getObject("paginas")+"</td>");
         out.println("<td>"+rs.getObject("genero")+"</td>");
         out.println("<td>"+rs.getObject("idioma")+"</td>");
         out.println("<td>"+"<a href=eliminar.jsp?cod="+rs.getString("titulo")+">"+"eliminar"+"</a>"+"</td>");
         out.println("</tr>");
         
      }
      out.println("</table>");

      // cierre de la conexion
      conexion.close();
   }
   else
      // Error en la conexion
      out.println("fallo");
}
catch (Exception e)
{
   // Error en algun momento.
   out.println("Excepcion "+e);
   e.printStackTrace();
}
%>
   <br></br> 
    <a href="index.jsp">Salir</a>
 </center>
    </body>
</html>
