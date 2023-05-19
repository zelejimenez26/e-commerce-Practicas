<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	out.print("Su nombre es: "+request.getParameter("txtNombre")+"</br>");
	String cedula = request.getParameter("txtCedula");
	String usuario = request.getParameter("txtNUsuario");
	String estadoCivil = request.getParameter("cmbECivil");
	String residencia = request.getParameter("rdResidencia");
	String foto = request.getParameter("fileFoto");
	String color = request.getParameter("colorFavorito");
	String hoja_vida = request.getParameter("archivo_subido");
	%>
	
	<%=cedula %>
	<br>Nombre de usuario
	<%=usuario%>
	<br>Su estado civil es
	<%=estadoCivil%>
	<br>Su residencia esta ubicada en
	<%=residencia%>
	<br>El archivo seleccionado para foto de perfil es 
	<u><%=foto%></u>
	<br>Hoja de vida
	<u><%=hoja_vida%></u>
	<br>Su fecha de nacimiento es 
	<strong><% out.print(request.getParameter("fecha")); %></strong>
	<br>
	<font color=<%=color%>> Este es tu color favorito</font>
	<br>
	
	<%
    Funciones object= new Funciones();
    out.print("Provincia: " + object.provincia_cedula(request.getParameter("txtCedula")));
    out.print("<br> Tu edad es: " + object.calcular_edad(request.getParameter("fecha")));
    %>
	
</body>
</html>
