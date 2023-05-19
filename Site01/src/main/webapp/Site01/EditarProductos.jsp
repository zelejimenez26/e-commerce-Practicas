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
int cod = Integer.parseInt(request.getParameter("editarcod"));
String des = request.getParameter("editardesc");
float pre = Float.parseFloat(request.getParameter("editarprec"));
int can = Integer.parseInt(request.getParameter("editarcant"));
Producto mp = new Producto(cod, des,pre, can);
boolean actualizado = mp.ModificarProducto(mp);
if(actualizado==true){
	response.sendRedirect("productos.jsp");
}else{
	out.println("algo salio mal");
}
%>
</body>
</html>