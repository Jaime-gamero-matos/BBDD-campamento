package paquete;

import java.sql.ResultSet;
import java.util.Optional;

public class AsignacionTiendaMapper implements Mapper<AsignacionTienda>{

	@Override
	public Optional<AsignacionTienda> map(ResultSet resultado) {
		try {
			return Optional.of(new AsignacionTienda(resultado.getInt("id_ninio"),
					resultado.getInt("id_tienda"),
					resultado.getInt("numero_tienda")));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Optional.empty();
	}
	
}
