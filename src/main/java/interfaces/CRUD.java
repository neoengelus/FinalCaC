package interfaces;

import java.util.List;

import modelo.Persona;

public interface CRUD {
	public List listar();
	public Persona list(int id);
	public boolean edit(Persona per);
	public boolean eliminar(int id);
	public boolean add(Persona per);
}
