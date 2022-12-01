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
            string NumeroCelular = txtEmail.Text;
            string Mensagem = txtCelular.Text;

            ContatoCliente contato = new ContatoCliente(Nome,Email,NumeroCelular,Mensagem);
            contato.EnviaContato();
        }
    }
}