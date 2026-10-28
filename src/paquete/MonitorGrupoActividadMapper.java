package paquete;

import java.sql.ResultSet;
import java.util.Optional;

public class MonitorGrupoActividadMapper implements Mapper<MonitorGrupoActividad>{

	@Override
	public Optional<MonitorGrupoActividad> map(ResultSet resultado) {
		try {
			return Optional.of(new MonitorGrupoActividad(resultado.getString("dni_monitor"),
					resultado.getInt("id_grupo"),
					resultado.getInt("cod_actividad")));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Optional.empty();
	}
	
}
