<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>Categoria</title>
</head>
<body>
	<header>
      <h1>
        Nana Bonsái
      </h1>
    </header>
    <nav>
    <a href="index.jsp">Inicio</a>
    <a href="info.jsp">Bonsái</a>
    <a href="login.jsp">Iniciar sesión</a>
    <a href="registro.jsp">Registrarse</a>
    <a href="Catalogo.jsp">Catálogo</a>
    <a class="active" href="Busqueda.jsp">Búsqueda</a>
    </nav>
    <h2>Búsquedas</h2>
    <ul>
    	<li><a href="todos.jsp">Mostrar todos los productos</a></li>
    	<li><a href="consultaCategoria.jsp">Consulta de productos por categoria</a></li>
    </ul>
    <hr>
    <%
    Producto producto = new Producto();
    out.print(producto.buscarProductoCategoria(Integer.parseInt(request.getParameter("cmbCategoria"))));
    %>
</body>
</html>