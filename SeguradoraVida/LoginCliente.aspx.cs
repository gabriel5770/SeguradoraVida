using SeguradoraVida.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SeguradoraVida
{
    public partial class LoginCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void logar_Click(object sender, EventArgs e)
        {
            EfetuaLogin();
        }

        private void EfetuaLogin()
        {
            string LoginCpf = txtCpf.Text;
            string Senha = txtSenha.Text;

            Cliente cliente = new Cliente(LoginCpf, Senha);
            if (cliente.VerificaLogin())
            {
                Response.Redirect("AreaCliente.aspx");
            }
        }
    }
}