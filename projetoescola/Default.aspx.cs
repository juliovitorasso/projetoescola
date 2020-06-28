using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoescola
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnentrar_Click(object sender, EventArgs e)
        {
            string usuario = Txtusuario.Text;
            string senha = Txtsenha.Text;

            //cria conexao com o banco de dados
            projetoescolaEntities conexao = new projetoescolaEntities();

            //consulta o objeto baseado em login e senha
            usuarios user =
            conexao.usuarios.FirstOrDefault(
                linha=>linha.login.Equals(usuario) &&
                linha.senha.Equals(senha)
                );

            if (user !=null)
            {
                //login bem sucedido!
                Session["usuario_logado"] = user;
                Response.Redirect("principal.aspx");


            }
            
            
        }
    }
}