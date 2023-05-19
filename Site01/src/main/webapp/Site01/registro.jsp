<html>
<head>
	<link href="css/estilos.css" rel="stylesheet" type="text/css">
	<title>Registrarse</title>
</head>

<body>
  <main>
    <header>
      <h1>
        Registrarse
      </h1>
    </header>
    <nav>
    <a href="index.jsp">Inicio</a>
    <a href="info.jsp">Bons&aacute;i</a>
    <a href="login.jsp">Iniciar sesi&oacute;n</a>
    <a class="active" href="registro.jsp">Registrarse</a>
    <a href="Catalogo.jsp">Cat&aacute;logo</a>
    <a href="Busqueda.jsp">B&uacute;squeda</a>
  </nav>
    <div align="center" style="padding: 40px;">
    	<form action="respuesta.jsp" method="post">
          <table border="0">
            <tr><td>Nombre</td><td><input type="text" name="txtNombre" required/>*</td></tr>
            <tr><td>C&eacute;dula</td><td><input type="text" name="txtCedula" maxlength="10" required/>*</td></tr>
            <tr><td>Nombre de usuario</td><td><input type="text" name="txtNUsuario" required/>*</td></tr>
            <tr><td>Contrase&ntilde;a</td><td><input type="password" name="txtClave" required/>*</td></tr>
            <tr>
              <td>Estado civil</td>
              <td>
                <select name="cmbECivil">
                  <option value="Soltero">Soltero</option>
                  <option value="Casado">Casado</option>
                  <option value="Divorciado">Divorciado</option>
                  <option value="Viudo">Viudo</option>
                </select><br>
              </td>
            </tr>
            <tr>
              <td>Lugar residencia</td>
              <td>
                <input type="radio" name="rdResidencia" value="Sur"/>Sur
                <input type="radio" name="rdResidencia" value="Norte"/>Norte
                <input type="radio" name="rdResidencia" value="Centro"/>Centro
              </td>
            </tr>
            <tr><td>Foto</td> <td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" /></td></tr>
            <tr><td>Mes y a&ntilde;o de nacimiento</td> <td><input type="date" name="fecha"/></td></tr>
            <tr><td>Hoja de vida</td> <td><input type="file" name="archivo_subido" accept=".pdf"/></td></tr>
            <tr><td>Color Favorito</td> <td><input type="color" name="colorFavorito"/></td></tr>

          </table>
          <input type="submit"/>
          <input type="reset"/>
          </form>
          <h4> * CAMPO OBLIGATORIO</h4>
    	
    </div>

  </main>
</body>
</html>