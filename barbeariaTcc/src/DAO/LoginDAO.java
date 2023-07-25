/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import factory.ConnectionFactory;
import modelo.Login;
import java.sql.*;
import java.sql.PreparedStatement;
public class LoginDAO {
 private Connection connection;
 Long id;
 String email;
 String Senha;
 public LoginDAO(){
 this.connection = new ConnectionFactory().getConnection();
 }
 public void adiciona(Login login){
 String sql = "INSERT INTO login (email,senha) VALUES (?,?)";
 try {
         PreparedStatement stmt = connection.prepareStatement(sql);
         stmt.setString(1, login.getEmail());
         stmt.setString(2, login.getSenha());
         
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
