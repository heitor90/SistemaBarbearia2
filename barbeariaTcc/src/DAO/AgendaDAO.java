/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import factory.ConnectionFactory;
import modelo.Agenda;
import java.sql.*;
import java.sql.PreparedStatement;
public class AgendaDAO {
 private Connection connection;
 Long id;
 String cliente;
 String descricao;
 String cabelo;
 String barba;
 String hora;
 String Data;
 
 public AgendaDAO(){
 this.connection = new ConnectionFactory().getConnection();
 }
 public void adiciona(Agenda agenda){
 String sql = "INSERT INTO agenda (cliente,descricao,cabelo,barba,hora,data) VALUES (?,?,?,?,?,?)";
 try {
         PreparedStatement stmt = connection.prepareStatement(sql);
         stmt.setString(1, agenda.getCliente());
         stmt.setString(2, agenda.getDescricao());
         stmt.setString(3, agenda.getCabelo());
         stmt.setString(4, agenda.getBarba());
         stmt.setString(5, agenda.getHora());
         stmt.setString(6, agenda.getData());
         stmt.execute();
         stmt.close();
}
 catch (SQLException u) {
 throw new RuntimeException(u);
 }

 } 
}

/**
 *
 * @author senai
 */
