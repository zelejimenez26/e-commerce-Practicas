<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eliminación productos</title>
</head>
<body>
<%
	int cod = Integer.parseInt(request.getParameter("cod"));
	Producto cp = new Producto();
	boolean f = cp.EliminarProducto(cod);
	if(f == true){
		response.sendRedirect("productos.jsp");
	}
%>

</body>
</html>