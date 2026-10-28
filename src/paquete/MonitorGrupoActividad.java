package paquete;

import java.util.Objects;

public class MonitorGrupoActividad{
	private String dni;
	private int idgrupo, codActividad;
	
	
	
	
	
	public MonitorGrupoActividad(String dni, int idgrupo, int codActividad) {
		super();
		this.dni = dni;
		this.idgrupo = idgrupo;
		this.codActividad = codActividad;
	}
	
	public String getDni() {
		return dni;
	}
	
	public void setDni(String dni) {
		this.dni = dni;
	}
	
	public int getIdgrupo() {
		return idgrupo;
	}
	
	public void setIdgrupo(int idgrupo) {
		this.idgrupo = idgrupo;
	}
	
	public int getCodActividad() {
		return codActividad;
	}
	
	public void setCodActividad(int codActividad) {
		this.codActividad = codActividad;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(Integer.valueOf(codActividad), dni, Integer.valueOf(idgrupo));
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MonitorGrupoActividad other = (MonitorGrupoActividad) obj;
		return codActividad == other.codActividad && Objects.equals(dni, other.dni) && idgrupo == other.idgrupo;
	}
	@Override
	public String toString() {
		return "MonitorGrupoActividad [dni=" + dni + ", idgrupo=" + idgrupo + ", codActividad=" + codActividad + "]";
	}
	
	
}
