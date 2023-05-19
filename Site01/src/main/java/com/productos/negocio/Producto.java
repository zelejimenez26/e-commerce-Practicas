package com.productos.negocio;
import com.productos.datos.*;
import java.sql.*;
import java.io.File;
import java.io.FileInputStream;

public class Producto {
	private int Id_pr;
	private int Id_cat;
	private String descripcion_pr;
	private float Precio_pr;
	private int Cantidad_pr;
	
	public int getId_pr() {
		return Id_pr;
	}

	public void setId_pr(int id_pr) {
		Id_pr = id_pr;
	}

	public int getId_cat() {
		return Id_cat;
	}

	public void setId_cat(int id_cat) {
		Id_cat = id_cat;
	}

	public String getDescripcion_pr() {
		return descripcion_pr;
	}

	public void setDescripcion_pr(String descripcion_pr) {
		this.descripcion_pr = descripcion_pr;
	}

	public float getPrecio_pr() {
		return Precio_pr;
	}

	public void setPrecio_pr(float precio_pr) {
		Precio_pr = precio_pr;
	}

	public int getCantidad_pr() {
		return Cantidad_pr;
	}

	public void setCantidad_pr(int cantidad_pr) {
		Cantidad_pr = cantidad_pr;
	}

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
		while(rs.next())
		{
			tabla+="<tr><td>"+rs.getInt(1)+"</td>"
			+ "<td>"+rs.getString(3)+"</td>"
			+ "<td>"+rs.getInt(4)+"</td>"
			+ "<td>"+rs.getDouble(5)+"</td>"
			+ "</td></tr>";
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	public String buscarProductoCategoria(int cat)
	{
	String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
	Conexion con=new Conexion();
	ResultSet rs=null;
	String resultado="<table border=3>";
	try
	{
	rs=con.Consulta(sentencia);
	while(rs.next())
	{
	resultado+="<tr><td>"+ rs.getString(1)+"</td>"
	 + "<td>"+rs.getDouble(2)+"</td></tr>";
	}
	resultado+="</table>";
	}
	catch(SQLException e)
	{
	System.out.print(e.getMessage());
	}
	System.out.print(resultado);
	return resultado;
	}
	
	//Practica de ingresar productos
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio, String directorio)
			{
			String result="";
			Conexion con=new Conexion();
			PreparedStatement pr=null;
			String sql="INSERT INTO tb_producto (id_pr,id_cat,"
			+ "nombre_pr,cantidad_pr,precio_pr,foto_pr) "
			+ "VALUES(?,?,?,?,?,?)";
			try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			File fichero=new File(directorio);
			FileInputStream streamEntrada=new FileInputStream(fichero);
			pr.setBinaryStream(6, streamEntrada,(int)fichero.length());
			if(pr.executeUpdate()==1)
			{
			result="Inserción correcta";
			}
			else
			{
			result="Error en inserción";
			}
			}
			catch(Exception ex)
			{
				result=ex.getMessage();
				}
				finally
				{
				try
				{
				pr.close();
				con.getConexion().close();
				}
				catch(Exception ex)
				{
				System.out.print(ex.getMessage());
				}
				}
				return result;
				}

	
	public String consultar_Vendedor() {
		String sql = "SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con = new Conexion();
		String tabla = "<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()) {
				tabla += "<tr><td>" + rs.getInt(1) + "</td>" + "<td>" + rs.getString(3) + "</td>" + "<td>"
						+ rs.getInt(4) + "</td>" + "<td>" + rs.getDouble(5) + "</td>" + "</td></tr>"
						+ "<td> <a href= BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}
	
	//CONSULTAR - EDITAR
	public void ConsulEditarProductos(int cod) {
		Conexion con = new Conexion();
		ResultSet rs = null;
		String sql = "SELECT id_pr, id_cat, nombre_pr, precio_pr, cantidad_pr FROM tb_producto where id_pr = '" + cod + "'";
		try {
			rs = con.Consulta(sql);
			while(rs.next()) {
				setId_pr(rs.getInt(1));
				setId_cat(rs.getInt(2));
				setDescripcion_pr(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad_pr(rs.getInt(5));
			}
		}catch(Exception e) {
			
		}
	}
	
	//MODIFICAR
	public boolean ModificarProducto(Producto mp) {
		boolean agregado=false;
		Conexion con = new Conexion();
		String sql="UPDATE tb_producto SET nombre_pr='" + mp.getDescripcion_pr() + ", precio_pr = "+mp.getPrecio_pr() + ", "
				+ "cantidad_pr = "+mp.getCantidad_pr()+" WHERE \"id_pr\"=" + mp.getId_pr()+";";
		try {
			con.Ejecutar(sql);
			agregado=true;
			
		}catch(Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	//ELIMINAR
	public boolean EliminarProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_pr='" + cod + "'";
		try {
			con.Ejecutar(sql);
			f = true;
		}catch(Exception e) {
			f = false;
		}
		return f;
	}
	
	//CONSTRUCTORES
	public Producto() {
		
	}

	public Producto(int id_pr, String descripcion_pr, float precio_pr, int cantidad_pr) {
		Id_pr = id_pr;
		this.descripcion_pr = descripcion_pr;
		Precio_pr = precio_pr;
		Cantidad_pr = cantidad_pr;
	}
	
}
