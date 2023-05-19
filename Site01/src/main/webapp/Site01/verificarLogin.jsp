<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Verificar login</title>
</head>
<body>
<%
Usuario usuario=new Usuario();
String nlogin=request.getParameter("usuario");
String nclave=request.getParameter("clave");
HttpSession sesion=request.getSession(); //Se crea la variable de sesi�n
boolean respuesta=usuario.verificarUsuario(nlogin,nclave);
if (respuesta)
{
sesion.setAttribute("usuario", usuario.getNombre()); //Se a�ade atributos
sesion.setAttribute("perfil", usuario.getPerfil()); //Se a�ade atributos
response.sendRedirect("menu.jsp"); //Se redirecciona a una p�gina espec�fica
}
else
{
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/>
</jsp:forward>
<%
}
%>


</body>
</html>