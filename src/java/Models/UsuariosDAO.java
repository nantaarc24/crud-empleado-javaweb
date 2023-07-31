/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ferna
 */
public class UsuariosDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    int r;

    public Usuarios Validar(int documento, String password) {

        Usuarios usuario = new Usuarios();
        String consulta = "SELECT * FROM usuarios WHERE documento = ? AND password = ?";
        con = cn.Conexion();

        try {
            ps = con.prepareStatement(consulta);
            ps.setInt(1, documento);
            ps.setString(2, password);
            rs = ps.executeQuery();
            rs.next();

            do {
                usuario.setId(rs.getInt("id"));
                usuario.setDocumento(rs.getInt("documento"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setPassword(rs.getString("password"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setEstado(rs.getString("estado"));

            } while (rs.next());

        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usuario;
    }

    public List Listar() {
        String consulta = "SELECT * FROM usuarios";
        List<Usuarios> lista = new ArrayList<Usuarios>();

        try {
            con = cn.Conexion();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();

            while (rs.next()) {
                Usuarios usuario = new Usuarios();
                usuario.setId(rs.getInt("id"));
                usuario.setDocumento(rs.getInt("documento"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setPassword(rs.getString("password"));

                usuario.setRol(rs.getString("Rol"));
                usuario.setEstado(rs.getString("estado"));
                lista.add(usuario);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lista;
    }

    public int Agregar(Usuarios usuario) {
        String sentencia = "INSERT INTO usuarios(documento, nombre, correo, password, Rol, estado) VALUES(?,?,?,?,?,?)";

        try {

            con = cn.Conexion();
            ps = con.prepareStatement(sentencia);
            ps.setInt(1, usuario.getDocumento());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.setString(5, usuario.getRol());
            ps.setString(6, usuario.getEstado());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return r;
    }
    
    public Usuarios ListarPorId(int id) {
        
        Usuarios usuario = new Usuarios();
        String consulta = "SELECT * FROM usuarios WHERE id="+id;
        try {
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();

            while (rs.next()) {
                usuario.setDocumento(rs.getInt(2));
                usuario.setNombre(rs.getString(3));
                usuario.setCorreo(rs.getString(4));
                usuario.setPassword(rs.getString(5));
                usuario.setRol(rs.getString(6));
                usuario.setEstado(rs.getString(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usuario;
    }
    
    public int Actualizar(Usuarios usuario) {
        String sentencia = "UPDATE usuarios SET documento=?,nombre=?,correo=?,password=?,Rol=?,estado=? WHERE id=?";

        try {

            con = cn.Conexion();
            ps = con.prepareStatement(sentencia);
            ps.setInt(1, usuario.getDocumento());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.setString(5, usuario.getRol());
            ps.setString(6, usuario.getEstado());
            ps.setInt(7, usuario.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return r;
    }
    
    public void Eliminar(int id){
        
        String sql="DELETE FROM usuarios WHERE id="+id;
        con=cn.Conexion();
        try {
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Usuarios BuscarCliente(int documento){
        Usuarios usuario = new Usuarios();
        String consulta = "SELECT * FROM usuarios WHERE documento = ?";
        con = cn.Conexion();
        try {
            ps = con.prepareStatement(consulta);
            ps.setInt(1, documento);
            rs = ps.executeQuery();
            while(rs.next()){
                usuario.setId(rs.getInt("id"));
                usuario.setDocumento(rs.getInt("documento"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setRol(rs.getString("rol"));
                System.err.println(""+usuario.getNombre());
              }
        } catch (Exception e) {
        }
        return usuario;
    }

}
