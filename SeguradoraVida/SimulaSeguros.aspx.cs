using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeguradoraVida
{
    public partial class SimulaSeguros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

              

        }

        protected void btnEnviar_Click(object sender , EventArgs e)
        {
            string nome = txtNome.Text;
            string email = txtEmail.Text;
            string telefone = txtTelefone.Text;
            string cpf = txtCpf.Text;
            string dataNascimento = txtData.Text;

        }
    }
}