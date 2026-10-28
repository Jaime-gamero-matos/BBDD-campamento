package paquete;

import java.sql.ResultSet;
import java.util.Optional;

public class AsignacionCabanaMapper implements Mapper<AsignacionCabana>{

	@Override
	public Optional<AsignacionCabana> map(ResultSet resultado) {
		try {
			return Optional.of(new AsignacionCabana(resultado.getInt("idninio"),
					resultado.getInt("id_cabana"),
					resultado.getInt("numero_cabana")));
		} catch (Exception e) {
			// TODO: handle exception
		}
		return Optional.empty();
	}
	
}
