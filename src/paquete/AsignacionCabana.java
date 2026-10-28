package paquete;

import java.util.Objects;

public class AsignacionCabana {
	private int idninio, idcabana,numeroCabana;

	public AsignacionCabana(int idninio, int idcabana, int numeroCabana) {
		super();
		this.idninio = idninio;
		this.idcabana = idcabana;
		this.numeroCabana = numeroCabana;
	}

	@Override
	public int hashCode() {
		return Objects.hash(Integer.valueOf(idcabana), Integer.valueOf(idninio), Integer.valueOf(numeroCabana));
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AsignacionCabana other = (AsignacionCabana) obj;
		return idcabana == other.idcabana && idninio == other.idninio && numeroCabana == other.numeroCabana;
	}

	@Override
	public String toString() {
		return "AsignacionCabana [idninio=" + idninio + ", idcabana=" + idcabana + ", numeroCabana=" + numeroCabana
				+ "]";
	}
	
}
