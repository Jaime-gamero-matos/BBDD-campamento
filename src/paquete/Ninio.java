package paquete;

import java.util.Objects;

public class Ninio {
	private String nombre,apellidos;
	private int edad, grupo;
	
	
	public Ninio(String nombre, String apellidos, int edad, int grupo) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.edad = edad;
		this.grupo = grupo;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellidos() {
		return apellidos;
	}


	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}


	public int getEdad() {
		return edad;
	}


	public void setEdad(int edad) {
		this.edad = edad;
	}


	public int getGrupo() {
		return grupo;
	}


	public void setGrupo(int grupo) {
		this.grupo = grupo;
	}
	
	

	@Override
	public int hashCode() {
		return Objects.hash(apellidos, Integer.valueOf(edad), Integer.valueOf(grupo), nombre);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ninio other = (Ninio) obj;
		return Objects.equals(apellidos, other.apellidos) && edad == other.edad && grupo == other.grupo
				&& Objects.equals(nombre, other.nombre);
	}


	@Override
	public String toString() {
		return "Ninio [nombre=" + nombre + ", apellidos=" + apellidos + ", edad=" + edad + ", grupo=" + grupo + "]";
	}
	
	
	
}
