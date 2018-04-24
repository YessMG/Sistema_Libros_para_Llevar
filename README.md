# Sistema Libros para Llevar 

Proyecto para la fase final de la materia de Taller de productividad basada en herramientas tecnologicas. 

### Tabla de contenidos 

-[texto a mostrar](## Introducción:)

## Introducción: 
Este repositorio contine el codigo de un programa de administración del inventario de libros para una pequeña biblioteca *"Libros para Llevar"*.

## Descripción: 
Este es un programa que utiliza una base de datos **(MySQL)** y un servidor **(Apache Tomcat)** de forma local, esta basado en lenguaje **JAVA** y **HTML** *Es un programa construido con JSP´s en Java Application web* y su conexión a la base de datos esta hecha en *Java Script*


## Problema identificado:
La libreria *"Libros para Llevar"*, no cuenta con una conexión a internet estable, ademas de que se encuentra en constante crecimiento, porlo que necesitaban una solución rapida que les permitiera administrar el inventario de sus libros a travéz de un sistema que estubiera de forma local (devido a la conexíon a internet) y que en un futur pudiera mejorarse. 

## Solución: 
La solución que se planteo fue desarrollar un programa para la administración del inventario de libros el cual fue desarrollado en dos distintos lenguajes **jAVA** Y **HTML**, los cuales se convinaron a travez de **JSP´S** los cuales se dividieron en funcionalidades propias del sistema  para que al final se pudieran interconectaran a travez de la clase principal.

### Bloques de codígo 

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
   
 **Sintaxis Registro**
 ```
 // Bloque de codígo para registrar los libros 
 
        <form action="Alta.jsp" method="post">
                <table align="center">
                    <tr>
                        <td>Titulo:</td>
                        <td><input type="text" name="titulo" required></td>
                    </tr>
                    <tr>
                        <td>Editorial:</td>
                        <td><input type="text" name="editorial" required></td>
                    </tr>
                    <tr>
                        <td>Autor:</td>
                        <td><input type="text" name="autor" required></td>
                    </tr>
                    <tr>
                        <td>Paginas:</td>
                        <td><input type="text" name="paginas" required></td>
                    </tr>
                    <tr>
                        <td>Genero:</td>
                        <td><select name="genero" required>
                        <option value=""></option>
                        <option value="Ficcion">Ficcion</option>
                        <option value="Romantico">Romantico</option>
                        <option value="Juvenil">Juvenil</option>
                        <option value="Terror">Terror</option>
                        <option value="Infantil">Infantil</option>
                        <option value="New Adult">New Adult</option>
                        <option value="Suspenso">Suspenso</option>
                        <option value="Historico">Historico</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Idioma:</td>
                        <td><select name="idioma" required>
                        <option value=""></option>
                        <option value="Ingles">Ingles</option>
                        <option value="Español">Español</option>
                        <option value="Frances">Frances</option>
                        <option value="Italiano">Italiano</option>
                        <option value="Aleman">Aleman</option>
                        <option value="Otro">Otro</option>
                            </select></td> 
                    </tr>
                    
                    <tr>
                    <td></td>
<td><input type="submit" value="Guardar"></td>
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






