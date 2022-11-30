using SeguradoraVida.Model;
using System;
using System.Collections.Generic;
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
            txtNome.Text = Cliente._nome;
            txtCpf.Text = Cliente._cpf;
            txtTelefone.Text = Cliente._telefone;
            txtEmail.Text = Cliente._email;
            txtDataNascimento.Text = Cliente._dataNascimento;
            txtSeguro.Text = Cliente._nomeSeguradora;

        }

        protected void SalvaDados_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text;
            string Telefone = txtTelefone.Text;
            string Cpf = txtCpf.Text;

            Cliente cliente = new Cliente(Email, Telefone, Cpf);
            cliente.AtualizaCadastroCliente();
        }
    }
}