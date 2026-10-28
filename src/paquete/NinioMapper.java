package paquete;

import java.sql.ResultSet;
import java.util.Optional;

public class NinioMapper implements Mapper<Ninio>{

	@Override
	public Optional<Ninio> map(ResultSet resultado) {
		try {
			return Optional.of(new Ninio(resultado.getString("nombre"),
					resultado.getString("apellidos"),
					resultado.getInt("edad"),
					resultado.getInt("idgrupo")
					));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Optional.empty();
	}
	
}
