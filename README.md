# Sistema Libros para Llevar 

Proyecto para la fase final de la materia de Taller de productividad basada en herramientas tecnologicas. 

## Tabla de contenidos 

[texto a mostrar](#mititulo_)

## Introducción: 
Este repositorio contine el codigo de un programa de administración del inventario de libros para una pequeña biblioteca *"Libros para Llevar"*.

## Descripción: 
Este es un programa que utiliza una base de datos **(MySQL)** y un servidor **(Apache Tomcat)** de forma local, esta basado en lenguaje **JAVA** y **HTML** *Es un programa construido con JSP´s en Java Application web* y su conexión a la base de datos esta hecha en *Java Script*


## Problema identificado:
## Solución: 
Para poder desarrollar el programa para la administración del inventario de libros, se desarrollo en funciones  por separado para que al final se interconectaran a travez de la clase principal.

### Sintaxis

**Sintaxis index**
```
// Bloque de codígo para relacionar todos las funciones 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
    <link href = "css.css" rel = "stylesheet">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
        <title>Friendly Books</title>
    </head>
    <body background="fondo3.png">
    <center>
        <h1>Friendly Books</h1>
        <img src="books.jpg">
        <br/><br/><br/>
        <a href="Registro.jsp"> Alta de Libros</a>||
        <a href="Consulta.jsp"> Consulta de Libros</a>||
        <a href="Baja.jsp">Baja de Libros</a>
        <center/>
    </body>
    <style>
        title
        {
            color: blue;
        }
    </style>
</html>
```

**Sintaxis conexión Base de datos**
```
// Bloque de codígo para la Conexion con la base de datos 
   Class.forName("org.gjt.mm.mysql.Driver");
   Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventario","root","160604");
   if (!conexion.isClosed())
   ```

**Sintaxis "Alta lIbros"**

```
//Bloque de codígo para insertar los registros en la base de datos 

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
```

**Sintaxcis "Baja Libros"**

 ```
 int n = stmt.executeUpdate("delete from libros where titulo='" + codigo + "'" );
    
    if(n == 1)
        out.println("Registro eliminado");
    else
        out.println("Registro no eliminado");
        
   ```  
        

**Sintaxis "Consulta Libros"**

```
// Bloque de codígo para realizar la consulta en la base de datos
      Statement st = conexion.createStatement();
      ResultSet rs = st.executeQuery("select * from libros" );
      // Ponemos los resultados en un table de html
      out.println("<table border=\"1\"><tr><td>Titulo</td><td>Editorial</td><td>Autor</td><td>Paginas</td><td>Genero</td><td>Idioma</td></tr>");
      while (rs.next())
      {
         out.println("<tr>");
         out.println("<td>"+rs.getObject("titulo")+"</td>");
         out.println("<td>"+rs.getObject("editorial")+"</td>");
         out.println("<td>"+rs.getObject("autor")+"</td>");
         out.println("<td>"+rs.getObject("paginas")+"</td>");
         out.println("<td>"+rs.getObject("genero")+"</td>");
         out.println("<td>"+rs.getObject("idioma")+"</td>");
         out.println("</tr>");
      }
      out.println("</table>");
      // cierre de la conexion
      conexion.close();
   }
   ``` 

## Arquitectura: 






