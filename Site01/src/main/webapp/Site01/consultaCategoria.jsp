<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>Buscar por categor�a</title>
</head>
<body>
    <header>
      <h1>
        Nana Bons�i
      </h1>
    </header>
    <nav>
    <a href="index.jsp">Inicio</a>
    <a href="info.jsp">Bons�i</a>
    <a href="login.jsp">Iniciar sesi�n</a>
    <a href="registro.jsp">Registrarse</a>
    <a href="Catalogo.jsp">Cat�logo</a>
    <a class="active" href="Busqueda.jsp">B�squeda</a>
    </nav>
    <h2>B�squedas</h2>
    <ul>
    	<li><a href="todos.jsp">Mostrar todos los productos</a></li>
    	<li><a href="consultaCategoria.jsp">Consulta de productos por categor�a</a></li>
    </ul>
    <hr>
    <form action="resultado.jsp" method="post">
    	<label for="categoria">Escoja la categor�a</label>
    		<%
    		Categoria categoria = new Categoria();
    		out.print(categoria.mostrarCategoria());
    		%>
   		<hr>
   		<button type="submit">ENVIAR</button>
    </form>
    
</body>
</html>