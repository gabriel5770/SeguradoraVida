using SeguradoraVida.Model;
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

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string email = txtEmail.Text;
            string telefone = txtTelefone.Text;
            string cpf = txtCpf.Text;
            string dataNascimento = txtData.Text;
            string sexo = "";
            string seguro = "";

            
            if (RadMasculino.Checked)
            {
                sexo = "Masculino";
            }
            else if (RadFeminino.Checked)
            {
                sexo = "Feminino";
            }

            if (RadInvalidez.Checked)
            {
                seguro = "Invalidez";
            }
            else if (RadMorteAcidental.Checked)
            {
                seguro = "Morte Acidental";
            }
            else if(RadDoencaHereditaria.Checked)
            {
                seguro = "Doença Hereditária";
            }

            


            if (VerificaCampos())
            {
                Simular sm = new Simular(nome, dataNascimento, email, telefone, cpf, sexo, seguro);
                if (sm.EnviaSimulacaoSeguro())
                {
                    Response.Write("<script>alert('Simulação enviada!');</script>");
                    LimpaCombo();
                }
            }

        }

        private bool VerificaCampos()
        {
            if (txtCpf.Text == "" || txtData.Text == "" || txtEmail.Text == "" || txtNome.Text == "" || txtTelefone.Text == "")
            {
                Response.Write("<script>alert('Há campos que não foram preenchidos!');</script>");

                return false;
            }
            return true;
        }

        private void LimpaCombo()
        {
            txtCpf.Text = "";
            txtData.Text = "";
            txtEmail.Text = "";
            txtNome.Text = "";
            txtTelefone.Text = "";
        }
    }
}