using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SeguradoraVida.Model
{
    public class ContatoCliente
    {
        private string _nome { get; set; }
        private string _email { get; set; }
        private string _celular { get; set; }
        private string _mensagem { get; set; }

        public ContatoCliente(string nome, string email, string celular, string mensagem)
        {
            _nome = nome;
            _email = email;
            _celular = celular;
            _mensagem = mensagem;
        }

        public bool EnviaContato()
        {
            bool rtnValido = false;
           
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString()))
            {
                using (var command = new SqlCommand
                {
                    Connection = connection,
                    CommandType = CommandType.StoredProcedure
                })
                {
                    command.CommandText = "Ins_WebForms_EnviaContatoCliente";
                    try
                    {
                        command.Parameters.AddWithValue("@Nome", _nome);
                        command.Parameters.AddWithValue("@Email", _email);
                        command.Parameters.AddWithValue("@Celular", _celular);
                        command.Parameters.AddWithValue("@Mensagem", _mensagem);

                        connection.Open();
                        command.ExecuteNonQuery();

                        rtnValido = true;
                    }
                    catch (SqlException ex)
                    {
                       
                    }
                    return rtnValido;
                }
            }
        }
    }
}