package paquete;


import java.util.ArrayList;

import org.junit.jupiter.api.Test;

class AlmacenCampamentoJDBCTest {

	@Test
	void test() {
		
		AlmacenJDBC<Ninio> almacenNinios = new AlmacenJDBC<>(
				"jdbc:mysql://localhost:3306/campamento",
				"root",
				"1234",
				Ninio.class,
				new NinioMapper());
		ArrayList<Ninio> listaNinios = (ArrayList<Ninio>) almacenNinios.getALL();
		System.out.println(listaNinios);
		
		
		AlmacenJDBC<AsignacionCabana> almacenAsignacionesACabana = new AlmacenJDBC<>(
				"jdbc:mysql://localhost:3306/campamento",
				"root",
				"1234",
				AsignacionCabana.class,
				new AsignacionCabanaMapper());
		ArrayList<AsignacionCabana> listaAsignacionesACabana = (ArrayList<AsignacionCabana>) almacenAsignacionesACabana.getALL();
		System.out.println(listaAsignacionesACabana);
		
		
		AlmacenJDBC<AsignacionTienda> almacenAsignacionesATienda = new AlmacenJDBC<>(
				"jdbc:mysql://localhost:3306/campamento",
				"root",
				"1234",
				AsignacionTienda.class,
				new AsignacionTiendaMapper());
		ArrayList<AsignacionTienda> listaAsignacionesATienda = (ArrayList<AsignacionTienda>) almacenAsignacionesATienda.getALL();
		System.out.println(listaAsignacionesATienda);
		
		AlmacenJDBC<MonitorGrupoActividad> almacenMonitorGrupoActividad = new AlmacenJDBC<>(
				"jdbc:mysql://localhost:3306/campamento",
				"root",
				"1234",
				MonitorGrupoActividad.class,
				new MonitorGrupoActividadMapper());
		ArrayList<MonitorGrupoActividad> listaActividadesRealizadas = (ArrayList<MonitorGrupoActividad>) almacenMonitorGrupoActividad.getALL();
		System.out.println(listaActividadesRealizadas);
		
	}

}
