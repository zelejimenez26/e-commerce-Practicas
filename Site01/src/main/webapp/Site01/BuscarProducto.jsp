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
	int cod=Integer.parseInt(request.getParameter("cod"));
	Producto mp = new Producto();
	mp.ConsulEditarProductos(cod);
%>

<form action="EditarProductos.jsp" method="post">
	<table>
		<tr>
		<td>Código producto:</td>
		<td><input type="text" name="editarcod" value="<%=cod%>"/></td>
		</tr>
		
		<tr>
		<td>Categoria:</td>
		<td><output><%=mp.getId_cat()%></output></td>
		</tr>
		
		<tr>
		<td>Descripcion</td>
		<td><input type="text" name="editardesc" value="<%=mp.getDescripcion_pr()%>"/></td>
		</tr>
		
		<tr>
		<td>Precio</td>
		<td><input type="text" name="editarprec" value="<%=mp.getPrecio_pr()%>"/></td>
		</tr>
		
		<tr>
		<td>Cantidad</td>
		<td><input type="text" name="editarcant" value="<%=mp.getCantidad_pr()%>"/></td>
		</tr>
	</table>
	<br />
	<br /><input type="submit" name="Actualizar"/>
</form>
</body>
</html>