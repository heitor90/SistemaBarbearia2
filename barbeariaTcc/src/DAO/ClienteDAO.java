/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import factory.ConnectionFactory;
import modelo.Cliente;
import java.sql.*;
import java.sql.PreparedStatement;
public class ClienteDAO {
 private Connection connection;
 Long id;
 String nome;
 String telefone;
 String email;
 String cpf;
 String Senha;
 public ClienteDAO(){
 this.connection = new ConnectionFactory().getConnection();
 }
 public void adiciona(Cliente cliente){
 String sql = "INSERT INTO cliente (nome,telefone,email,cpf,senha) VALUES (?,?,?,?,?)";
 try {
         PreparedStatement stmt = connection.prepareStatement(sql);
         stmt.setString(1, cliente.getNome());
         stmt.setString(2, cliente.getTelefone());
         stmt.setString(3, cliente.getEmail());
         stmt.setString(4, cliente.getCpf());
         stmt.setString(5, cliente.getSenha());
         
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
