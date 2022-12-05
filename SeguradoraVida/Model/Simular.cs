using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SeguradoraVida.Model
{
    public class Simular
    {
        private string _nome { get; set; }
        private string _dataNascimento { get; set; }
        private string _email { get; set; }
        private string _telefone { get; set; }
        private string _cpf { get; set; }
        private string _sexo { get; set; }
        private string _seguro { get; set; }

        public Simular(string nome, string dataNascimento, string email, string telefone, string cpf, string sexo, string seguro)
        {
            _nome = nome;
            _dataNascimento = dataNascimento;
            _email = email;
            _telefone = telefone;
            _cpf = cpf;
            _sexo = sexo;
            _seguro = seguro;
        }

        public bool EnviaSimulacaoSeguro()
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
                    command.CommandText = "Ins_WebForms_EnviaSimulacaoSeguro";
                    try
                    {
                        command.Parameters.AddWithValue("@Nome", _nome);
                        command.Parameters.AddWithValue("@Email", _email);
                        command.Parameters.AddWithValue("@DataNascimento", _dataNascimento);
                        command.Parameters.AddWithValue("@Telefone", _telefone);
                        command.Parameters.AddWithValue("@Cpf", _cpf);
                        command.Parameters.AddWithValue("@Sexo", _sexo);
                        command.Parameters.AddWithValue("@Seguro", _seguro);

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
