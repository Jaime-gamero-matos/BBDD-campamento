package paquete;

import java.util.Objects;

public class Tienda {
	private int idtienda;

	public Tienda(int idtienda) {
		super();
		this.idtienda = idtienda;
	}

	public int getIdtienda() {
		return idtienda;
	}

	public void setIdtienda(int idtienda) {
		this.idtienda = idtienda;
	}

	@Override
	public String toString() {
		return "Tienda [idtienda=" + idtienda + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(Integer.valueOf(idtienda));
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Tienda other = (Tienda) obj;
		return idtienda == other.idtienda;
	}
	
	
}
