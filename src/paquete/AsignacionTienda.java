package paquete;

import java.util.Objects;

public class AsignacionTienda {
	private int idninio, idtienda,numeroTienda;

	public AsignacionTienda(int idninio, int idtienda, int numeroTienda) {
		super();
		this.idninio = idninio;
		this.idtienda = idtienda;
		this.numeroTienda = numeroTienda;
	}

	
	
	
	public int getIdninio() {
		return idninio;
	}




	public void setIdninio(int idninio) {
		this.idninio = idninio;
	}




	public int getIdtienda() {
		return idtienda;
	}




	public void setIdtienda(int idtienda) {
		this.idtienda = idtienda;
	}




	public int getNumeroTienda() {
		return numeroTienda;
	}




	public void setNumeroTienda(int numeroTienda) {
		this.numeroTienda = numeroTienda;
	}




	@Override
	public int hashCode() {
		return Objects.hash(Integer.valueOf(idninio), Integer.valueOf(idtienda), Integer.valueOf(numeroTienda));
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AsignacionTienda other = (AsignacionTienda) obj;
		return idninio == other.idninio && idtienda == other.idtienda && numeroTienda == other.numeroTienda;
	}




	@Override
	public String toString() {
		return "AsignacionTienda [idninio=" + idninio + ", idtienda=" + idtienda + ", numeroTienda=" + numeroTienda
				+ "]";
	}
	
	
	
}
