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

        protected void Check_Clicked(object sender, EventArgs e)
        {
            if(checkHabilitaCombo.Checked == true)
            {
               txtEmail.Enabled = true;
            }
            else
            {
                txtEmail.Enabled = false;
            }
        }
    }
}