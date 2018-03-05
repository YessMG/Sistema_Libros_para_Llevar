<%-- 
    Document   : Registro
    Created on : 19/02/2017, 01:13:53 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet"> 
    <link href = "css.css" rel = "stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro </title>
    </head>
    <body background="fondo3.png">
    <center>
        <h1>Fiendly Books</h1>
        <br/><br/>
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
                    </tr>
                    <tr>
                    <td></td>
                    <td><input type="reset" value="Restablecer datos"></td>
                    </tr>
                </table>
                <br/><br/><br/>
                <a href="index.jsp">Regresar</a>
            
        </form>
        
     </center>
    </body>
</html>

