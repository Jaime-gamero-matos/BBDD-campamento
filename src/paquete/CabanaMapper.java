package paquete;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;

public class CabanaMapper implements Mapper<Cabana>{

	@Override
	public Optional<Cabana> map(ResultSet resultado) {
		try {
			return Optional.of(new Cabana(resultado.getInt("idcabana")));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Optional.empty();
	}
	
}
