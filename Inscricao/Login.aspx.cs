using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inscricao
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_entrar_Click(object sender, EventArgs e)
        {
            if (tb_user.Text.ToLower() == "user" && tb_senha.Text == "123456")
            {
                Session["logado"] = "sim";
                Response.Redirect("Formulario.aspx");
            }
            else
            {
                lbl_mensagem.Visible = true;
            }
        }
    }
}