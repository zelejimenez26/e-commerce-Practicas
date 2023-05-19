<html>
<head>
  <link href="css/estilos.css" rel="stylesheet" type="text/css">
  <title>Iniciar sesion</title>
</head>

<body>
  <main>
    <header>
      <h1>
        Bienvenido de nuevo
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

    <div class="login_box">
      <img class="avatar" src="imagenes/logo_nanaBonsai.jpeg">
      <h4>Ingreso al sistema</h4>
      <form action="verificarLogin.jsp" method="post">
		   	<table border="0" >
		   		<tr><td>Usuario:</td><td>
		   			<input type="text" name="usuario" required/></td></tr>
				<tr><td>Clave:</td><td>
					<input type="text" name="clave" required/></td></tr>
				<tr>
					<td><input type="submit"/></td>
					<td><input type="reset"/></td>
				</tr>		
			</table>
		</form>
		<br>
		<a href="#">Olvido su contrasena</a><br>
        <p>¿No tienes una cuenta?</p>
        <a href="registro.jsp">Registrate aquí!</a>
    </div>

  </main>
</body>
</html>