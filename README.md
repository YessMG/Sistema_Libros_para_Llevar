# Sistema Libros para Llevar 

Proyecto para la fase final de la materia de Taller de productividad basada en herramientas tecnologicas. 

### Tabla de contenidos 

* [Introducción](#mi-titulo-a-anclar)
* [Descripción](#mi-titulo-a-anclar)
* [Problema identificado](#mi-titulo-a-anclar)
* [Solución](#mi-titulo-a-anclar)
   * [Bloques de codígo](#mi-titulo-a-anclar)
     * [Sintaxis Index](#mi-titulo-a-anclar)
     * [Sintaxis conexión a base de datos](#mi-titulo-a-anclar)
     * [Sintaxis Registro](#mi-titulo-a-anclar)
     * [Sintaxis Alta](#mi-titulo-a-anclar)
     * [Sintaxis Baja](#mi-titulo-a-anclar)
     * [Sintaxis Consulta](#mi-titulo-a-anclar)
* [Arquitectura](#mi-titulo-a-anclar)
* [FAQS](#mi-titulo-a-anclar)
* [Referencias](#mi-titulo-a-anclar)
* [Contribución](#mi-titulo-a-anclar)

### Introducción: 
Este repositorio contine el codigo de un programa de administración del inventario de libros para una pequeña biblioteca *"Libros para Llevar"*.

### Descripción: 
Este es un programa que utiliza una base de datos **(MySQL)** y un servidor **(Apache Tomcat)** de forma local, esta basado en lenguaje **JAVA** y **HTML** *Es un programa construido con JSP´s en Java Application web* y su conexión a la base de datos esta hecha en *Java Script*


### Problema identificado:
La libreria *"Libros para Llevar"*, no cuenta con una conexión a internet estable, ademas de que se encuentra en constante crecimiento, porlo que necesitaban una solución rapida que les permitiera administrar el inventario de sus libros a travéz de un sistema que estubiera de forma local (devido a la conexíon a internet) y que en un futur pudiera mejorarse. 

### Solución: 
La solución que se planteo fue desarrollar un programa para la administración del inventario de libros el cual fue desarrollado en dos distintos lenguajes **JAVA** y **HTML**, los cuales se convinaron a travez de *JSP´S* los cuales se dividieron en funcionalidades propias del sistema  para que al final se pudieran interconectaran a travez de la clase principal.

#### Bloques de codígo 

***Sintaxis index***
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

***Sintaxis conexión Base de datos***
```
// Bloque de codígo para la Conexion con la base de datos 
   Class.forName("org.gjt.mm.mysql.Driver");
   Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventario","root","160604");
   if (!conexion.isClosed())
   ```
   
 ***Sintaxis Registro***
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

***Sintaxis "Alta lIbros"***

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

***Sintaxcis "Baja Libros"***

 ```
 int n = stmt.executeUpdate("delete from libros where titulo='" + codigo + "'" );
    
    if(n == 1)
        out.println("Registro eliminado");
    else
        out.println("Registro no eliminado");
        
   ```  
        

***Sintaxis "Consulta Libros"***

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


### Arquitectura

Es necesario definir la aqrquitectura que se necesita para ejecutar este programa de forma local, por lo que acontinuación se describe cada uno de los elementos necesarios.

* Lenguaje: [***JAVA***](http://www.oracle.com/technetwork/es/java/javase/downloads/index.html)
   - Es el lenguaje que se utilizo para dearrollar este sistema / *puede descargarse el JDK  por separado o con el IDE

* Librerias:
    * [***Java Application Web***](http://plugins.netbeans.org/PluginPortal/)
      - La libreria que se utilizo para desarrollar los formularios y la interfaz grafica, a travez de JSP´S donde se combinaron dos lenguajes distintos *HTML* y *Java Script*

    * [***MySQL Java conector***](https://dev.mysql.com/downloads/connector/j/5.1.html)
      - Es el ejecutable que funcionara como enlace entre *"Java"* y *"MySQL"*

* Entorno de desarrollo: [***Netbeans 8.2***](https://netbeans.org/downloads/?pagelang=pt_BR) 
   - Es la IDE que se utilizo para desarrollar el codigo / *Nota: Es necesario descargar la versión con JDk*

* Servidor Local: [***apache tomcat 8.5***](http://tomcat.apache.org/tomcat-8.5-doc/)
   - El servidor Local utilizado para ejecutar el programa

* Base de datos Local: [***MySQL 5.2***](https://dev.mysql.com/downloads/)
   - Base de datos local. 


### FAQS 

Para mayor información sobre la arquitectura utilizada para la ejecución del programa o preguntas sobre el desarrollo del codigo favor de  consultar el  siguiente link, para visualizar las lista de preguntas frecuentes: 


### Referencias 

*Si los enlaces en el punto anterior no funciónan, favor de consultar estos links como sitios de descarga*

https://dev.mysql.com/downloads/connector/j/5.1.html
https://netbeans.org/downloads/?pagelang=pt_BR 
http://tomcat.apache.org/tomcat-8.5-doc/
https://dev.mysql.com/downloads/
http://plugins.netbeans.org/PluginPortal/
http://www.oracle.com/technetwork/es/java/javase/downloads/index.html

### Contribución

Elaborado por @YessMG 








