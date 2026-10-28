package paquete;

import java.util.Objects;

public class Cabana {
	private int idcabana;

	public Cabana(int idcabana) {
		super();
		this.idcabana = idcabana;
	}

	public int getIdcabana() {
		return idcabana;
	}

	public void setIdcabana(int idcabana) {
		this.idcabana = idcabana;
	}

	@Override
	public int hashCode() {
		return Objects.hash(Integer.valueOf(idcabana));
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cabana other = (Cabana) obj;
		return idcabana == other.idcabana;
	}

	@Override
	public String toString() {
		return "Cabana [idcabana=" + idcabana + "]";
	}
	
	
}
