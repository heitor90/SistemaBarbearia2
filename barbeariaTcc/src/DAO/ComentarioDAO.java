/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import factory.ConnectionFactory;
import modelo.Comentario;
import java.sql.*;
import java.sql.PreparedStatement;


public class ComentarioDAO {

    private Connection connection;
    String nome;
    String comentario1;
    String comentario2;
    String comentario3;
    String comentario4;

    public ComentarioDAO() {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adiciona(Comentario comentario) {
        String sql = "INSERT INTO comentario (nome,comentario1,comentario2,comentario3,comentario4) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, comentario.getNome());
            stmt.setString(2, comentario.getComentario1());
            stmt.setString(3, comentario.getComentario2());
            stmt.setString(4, comentario.getComentario3());
            stmt.setString(5, comentario.getComentario4());

            stmt.execute();
            stmt.close();
        } catch (SQLException u) {
            throw new RuntimeException(u);
        }

    }
}

/**
 *
 * @author senai
 */
