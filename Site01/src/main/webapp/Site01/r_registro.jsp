<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Producto mp = new Producto();
int cod=Integer.parseInt(request.getParameter("cod"));
int cat = Integer.parseInt(request.getParameter("cmbCategoria"));
String nombre = request.getParameter("txtNombre");
int can = Integer.parseInt(request.getParameter("txtCantidad"));
double pre = Double.parseDouble(request.getParameter("txtPrecio"));
String directorio = request.getParameter("fileFoto");
mp.ingresarProducto(cod, cat, nombre, can, pre, directorio);


%>

</body>
</html>