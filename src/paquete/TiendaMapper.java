package paquete;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public class TiendaMapper implements Mapper<Tienda>{

	@Override
	public Optional<Tienda> map(ResultSet resultado) {
		try {
			return Optional.of(new Tienda(resultado.getInt("idtienda")));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Optional.empty();
	}
	
}
