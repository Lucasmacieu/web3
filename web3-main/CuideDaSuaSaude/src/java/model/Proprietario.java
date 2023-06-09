package model;

import java.sql.SQLException;

public class Proprietario {
    private int idProprietario;
    private String nome;
    private String cpf;
    private String tipo;
    private int colesterol;
    private int numero;
    private String cep;
    private String cidade;
    private String senha;
    

    public Proprietario(String nome, String cpf, String tipo, int colesterol, int numero, String cep, String cidade) {
        this.nome = nome;
        this.cpf = cpf;
        this.tipo = tipo;
        this.colesterol = colesterol;
        this.numero = numero;
        this.cep = cep;
        this.cidade = cidade;
    }
    
    public Proprietario(){}

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
   
    public int getIdProprietario() {
        return idProprietario;
    }

    public void setIdProprietario(int idProprietario) {
        this.idProprietario = idProprietario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getColesterol() {
        return colesterol;
    }

    public void setColesterol(int colesterol) {
        this.colesterol = colesterol;
    }
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    
    public boolean isLogged() throws SQLException, ClassNotFoundException {
        ProprietarioDAO udao = new ProprietarioDAO();
        Proprietario uBanco = udao.listByName(this.nome);
        
        if(uBanco.getNome() != null){
            return (uBanco.getSenha().equals(this.senha));
        } else {
            return false;
        }
        
    }
}
