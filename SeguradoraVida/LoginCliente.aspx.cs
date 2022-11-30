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
    public static string _cpf;
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void logar_Click(object sender, EventArgs e)
        {
            EfetuaLogin();
        }

        private void EfetuaLogin()
        {
            _cpf = txtCpf.Text;
            string Senha = txtSenha.Text;

            Cliente cliente = new Cliente(_cpf, Senha);
            if (cliente.VerificaLogin())
            {
                Response.Redirect("AreaCliente.aspx");
            }
        }
    }
}