<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<title>Todos los productos</title>
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
    <a class="active" href="login.jsp">Iniciar sesión</a>
    <a href="registro.jsp">Registrarse</a>
    <a href="Catalogo.jsp">Catálogo</a>
    <a href="Busqueda.jsp">Búsqueda</a>
    </nav>
 
<%String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
 {
 %>
 <jsp:forward page="login.jsp">
 <jsp:param name="error" value="Debe registrarse en el sistema."/>
 </jsp:forward>
 <%
 }
 else
 {
 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
 int perfil=(Integer)sesion.getAttribute("perfil");
 %>
<h1>Sitio Privado de Productos</h1>
<h4>Bienvenido
<%
out.println(usuario);
%>
</h4>
<%
Pagina pag=new Pagina();
String menu=pag.mostrarMenu(perfil);
out.print(menu);
}
%>

</body>
</html>