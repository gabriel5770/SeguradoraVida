using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

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


        public Cliente(string email, string telefone, string cpf)
        {
            Cliente._email = email;
            Cliente._telefone = telefone;
            Cliente._cpf = cpf;
        }
        public Cliente(string cpf, string senha)
        {
            _cpf = cpf;
            _senha = senha;
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

                }
            }

            return RtnValido;
        }

        public bool AtualizaCadastroCliente()
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
                    command.CommandText = "Upd_WebForms_AtualizaCadastroCliente";
                    try
                    {
                        command.Parameters.AddWithValue("@Telefone", _telefone);
                        command.Parameters.AddWithValue("@Cpf", _cpf);
                        command.Parameters.AddWithValue("@Email", _email);


                        connection.Open();
                        command.ExecuteNonQuery();

                        rtnValido = true;
                    }
                    catch (SqlException ex)
                    {

                    }
                }
            }
            return rtnValido;
        }
    }
}