using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SeguradoraVida.Model;

namespace SeguradoraVida
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string Nome = txtNome.Text;
            string Email = txtEmail.Text;
            string NumeroCelular = txtCelular.Text;
            string Mensagem = txtMensagem.Text;

            ContatoCliente contato = new ContatoCliente(Nome, Email, NumeroCelular, Mensagem);
            if (contato.EnviaContato())
            {
                Response.Write("<script>alert('Enviamos a sua dúvida!');</script>");
                LimpaCampos();
            }
        }

        private void LimpaCampos()
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtCelular.Text = "";
            txtMensagem.Text = "";
        }
    }
}