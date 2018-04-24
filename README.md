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
Para poder desarrollar el programa para la administración del inventario de libros, se desarrollo en metodos  por separado para que al final se interconectaran a travez de la clase principal.

**Sintaxis **

**Sintaxis conexión Base de datos**

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

**Sintaxis "Alta lIbros"**

**Sintaxcis "Baja Libros"**

**Sintaxis "Consulta Libros"**

## Arquitectura: 






