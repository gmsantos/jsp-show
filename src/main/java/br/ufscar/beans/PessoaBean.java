package br.ufscar.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PessoaBean
{
   private String nome;
   private int idade;
   private String email;
   private String endereco;
   private String telefone;
   public String getNome() {
       return nome;
   }

   public void setNome(String nome) {
       this.nome = nome;
   }

   public int getIdade() {
       return idade;
   }

   public void setIdade(int idade) {
       this.idade = idade;
   }
   public String getEmail() {
       return email;
   }

   public void setEmail(String email) {
       this.email = email;
   }

  public String getEndereco() {
       return endereco;
   }

   public void setEndereco(String endereco) {
       this.endereco = endereco;
   }

   public String getTelefone() {
       return telefone;
   }

   public void setTelefone(String telefone) {
       this.telefone = telefone;
   }

    public boolean save(){
        boolean retorno = false;

        Connection conn;

        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver()); 
            conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "root");
        } catch(SQLException e) {
            throw new RuntimeException(e);            
        }

        if(conn != null){
            PreparedStatement p;
            try {
                p = conn.prepareStatement(
                    "INSERT INTO pessoa (nome, idade, email, endereco, telefone) VALUES (?,?,?,?,?)"
                );
                p.setString(1, nome);
                p.setInt(2, idade);
                p.setString(3, email);
                p.setString(4, endereco);
                p.setString(5, telefone);
                p.executeUpdate();

                conn.close();
                retorno = true;
            }
            catch(SQLException ex)
            {
                System.err.println("Falha no cadastro: " + ex.getMessage());
            }
        }

        return retorno;
    }
}
