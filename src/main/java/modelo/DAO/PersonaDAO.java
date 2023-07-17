package modelo.DAO;

import config.Conexion;
import interfaces.CRUD;
import java.util.ArrayList;
import java.util.List;
import modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PersonaDAO implements CRUD {
    
    private Conexion cn = new Conexion();
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    private Persona p = new Persona();
    
 
    @Override
    public List listar() {
        ArrayList<Persona> list = new ArrayList<>();
        String sql = "SELECT * FROM persona";
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Persona per = new Persona();
                per.setId(rs.getInt("id"));
                per.setDni((rs.getString("dni")));
                per.setNombre(rs.getString("nombre"));
                
                list.add(per);
            }
        } catch (Exception e) {
          error(e);  
        }
        return list;
    }
    
    @Override
    public Persona list(int id) {
        String sql = "SELECT * FROM persona WHERE id =" + id;
        try{
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                p.setId(rs.getInt("id"));
                p.setDni(rs.getString("dni"));
                p.setNombre(rs.getString("nombre"));
            }
                
        } catch (Exception e) {            
        	error(e);
        }
        return p;
    }
    
    @Override
    public boolean add(Persona per) {
        String sql = "INSERT INTO persona(dni, nombre) VALUES ('"+ String.valueOf(per.getDni()) +"','" + per.getNombre() +"')";
        
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        	error(e);
        }
        return false;
    }
    
    @Override
    public boolean eliminar(int id) {
        String sql = "DELETE FROM persona WHERE id=" + id;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        	error(e);
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql = "UPDATE persona SET dni='"+ String.valueOf(per.getDni()) +"',nombre='" + per.getNombre() +"' WHERE id=" + String.valueOf(per.getId());
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        	error(e);
        }
        return false;
    }
    
    private void error(Exception e) {
    	System.err.println("Oucrrió un error: "+e);
    }
}