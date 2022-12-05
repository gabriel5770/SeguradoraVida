using SeguradoraVida.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeguradoraVida
{
    public partial class AreaCliente : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

            RetornaRegistroCliente();
        }

        protected void Check_Clicked(object sender, EventArgs e)
        {
            if (checkHabilitaCombo.Checked == true)
            {
                txtEmail.Enabled = true;
                txtTelefone.Enabled = true;

            }
            else
            {
                txtEmail.Enabled = false;
                txtTelefone.Enabled = false;

            }
        }

        protected void SalvarDados_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text;
            string Telefone = txtTelefone.Text;
            LoginCliente._cpf = txtCpf.Text;

            Cliente cliente = new Cliente(Email, Telefone, LoginCliente._cpf);
            cliente.AtualizaCadastroCliente();
        }

   

        private bool RetornaRegistroCliente()
        {

            bool RtnValido = false;

            var queryString = $"select tbclientes.nome,tbclientes.cpf,tbclientes.telefone,tbclientes.email,tbclientes.dataNascimento,tbseguradoras.nome from tblogin inner join tbclientes on tbclientes.idlogin = tblogin.id inner join tbseguradoras on tbclientes.idseguradora = tbseguradoras.id where tblogin.Email = '{LoginCliente._cpf}'";

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
                            txtNome.Text = reader.GetString(0);
                            txtCpf.Text = reader.GetString(1);
                            txtTelefone.Text = reader.GetString(2);
                            txtEmail.Text = reader.GetString(3);
                            txtDataNascimento.Text= reader.GetDateTime(4).ToString();
                            txtSeguro.Text = reader.GetString(5);

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
    }
}
