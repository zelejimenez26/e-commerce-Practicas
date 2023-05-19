<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ingresar nuevos productos</title>
</head>
<body>
<h1>Registro de productos</h1>
<hr>

<div>
    	<form action="r_registro.jsp" method="post">
          <table border="0">
            <tr>
            <td>Categor&iacute;a</td>
            <td>
            <%
    		Categoria categoria = new Categoria();
    		out.print(categoria.mostrarCategoria());
    		%>
    		</td>
    		</tr>
    		<tr><td>Nombre</td><td><input type="text" name="txtNombre" required/>*</td></tr>
    		<tr><td>Cantidad</td><td><input type="text" name="txtCantidad" required/>*</td></tr>
    		<tr><td>Precio</td><td><input type="text" name="txtPrecio" required/>*</td></tr>
            <tr><td>Imagen del producto</td><td><input type="file" name="fileFoto" accept=".jpg" /></td></tr>
          </table>
          <input type="submit"/>
          <input type="reset"/>
         </form>
         <h4> * CAMPO OBLIGATORIO</h4>
</div>

</body>
</html>