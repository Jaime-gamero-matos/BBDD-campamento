package paquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AlmacenJDBC<T> {
	private  String urlBBDD;
	private Connection conexion = null;
	private Class<T> clase;
	private Mapper<T> mapper;
	
	
	public AlmacenJDBC(String urlBBDD,String user,String password, Class<T> clase, Mapper<T> mapper) {
		this.urlBBDD = urlBBDD;
		this.clase = clase;
		this.mapper = mapper;
		
		try {
			conexion = DriverManager.getConnection(urlBBDD, user, password);
		} catch (SQLException exc) {
			System.err.println(exc);
		}
		
	}
	
	public List<T> getALL(){
		ArrayList<T> listaObjetos = new ArrayList<T>();
		try (Statement consulta = conexion.createStatement();
					ResultSet resultado = consulta.executeQuery("SELECT * FROM "+ clase.getSimpleName());){
			while (resultado.next()) {
				mapper.map(resultado).ifPresent(listaObjetos::add);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaObjetos;
	};
	
	
}
