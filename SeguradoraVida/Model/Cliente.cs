using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Diagnostics;
using System.Web.Optimization;
using System.Text;

namespace SeguradoraVida.Model
{
    public class Cliente
    {
        public static string _nome { get; set; }
        public static string _email { get; set; }
        public static string _nomeSeguradora { get; set; }
        public static string _dataNascimento { get; set; }
        public static string _telefone { get; set; }
        public static string _cpf { get; set; }
        private string _senha { get; set; }

        static string MyProperty { get; set; }

        public Cliente(string nome, string email, string nomeSeguradora, DateTime dataNascimento, string telefone, string cpf , string senha)
        {
            _nome = nome;
            _email = email;
            _nomeSeguradora = nomeSeguradora;
            _dataNascimento = Convert.ToString(dataNascimento);
            _telefone = telefone;
            _cpf = cpf;
            _senha = senha;
        }

        public Cliente(string cpf, string senha)
        {   
            _cpf = cpf;
            _senha = senha;
        }
        public Cliente()
        {

        }

        public bool VerificaLogin()
        {
            bool RtnValido = false;


            var queryString = $"select tbclientes.nome,tbclientes.cpf,tbclientes.telefone,tbclientes.email,tbclientes.dataNascimento,tbseguradoras.nome from tblogin inner join tbclientes on tbclientes.idlogin = tblogin.id inner join tbseguradoras on tbclientes.idseguradora = tbseguradoras.id where tblogin.Email = '{_cpf}' and tblogin.Senha ='{_senha}'";

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString()))
            {

                SqlCommand command = new SqlCommand(queryString, connection);

                 connection.Open();
                command.ExecuteNonQuery();




                try
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {

                        if (reader.Read())
                        {
                            _nome = reader.GetString(0);
                            _cpf = reader.GetString(1);
                            _telefone = reader.GetString(2);
                            _email = reader.GetString(3);
                            _dataNascimento = reader.GetDateTime(4).ToString();
                            _nomeSeguradora = reader.GetString(5);



                            return true;
                        }
                        else
                        {
                        }
                    }
                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
    }
            }

            return RtnValido;
        }

    }
}