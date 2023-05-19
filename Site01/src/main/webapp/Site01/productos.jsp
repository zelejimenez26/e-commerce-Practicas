<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Espacio privado para miembros/vendedores</h1>
<hr>
 	<%
    Producto producto = new Producto();
    out.print(producto.consultar_Vendedor());
    %>
</body>
</html>