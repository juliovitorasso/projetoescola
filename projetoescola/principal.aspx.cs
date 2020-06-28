using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoescola
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                {
                if (Session["usuario_logado"] == null)
                {
                    Response.Redirect("Default.aspx");

                }
                else
                {
                    //recupera objeto usuario logado da sessão
                    usuarios usuario = (usuarios)Session["usuario_logado"];
                    lblusuariologado.Text = " Bem vindo " + usuario.nome;
                }
            }


        }

        protected void lbsair_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");

        }
    }
}