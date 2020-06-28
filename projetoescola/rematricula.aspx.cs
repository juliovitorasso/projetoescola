using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoescola
{
    public partial class rematricula1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] != null)
                {

                    projetoescolaEntities conexao = new projetoescolaEntities();
                    carregargrid(conexao);
                    carregaalunos(conexao);
                }
                else
                {
                    //usuario não está logado
                    Response.Redirect("Default.aspx");

                }
            }

        }

        protected void btnlimpar_Click(object sender, EventArgs e)
        {
            limpar();



        }

        protected void btnsalvar_Click(object sender, EventArgs e)
        {
            string semestre = txtsemestre.Text;
            string unidade = txtunidade.Text;
            string confirmarematricula = txtrematricula.Text;

            //criar conexao com o banco de dados

            projetoescolaEntities conexao = new projetoescolaEntities();

            //criando o objeto rematricula
            rematricula r = new rematricula();
            r.idaluno = Convert.ToInt32(ddlalunos.SelectedValue.ToString());
            r.semestre = semestre;
            r.unidade = unidade;
            r.rematricula1 = confirmarematricula;

            

            conexao.rematricula.Add(r);

            conexao.SaveChanges();

            limpar();

            //carregar grid
            carregargrid(conexao);



            }
        private void limpar()
        {
            ddlalunos.Text = string.Empty;
            txtsemestre.Text = string.Empty;
            txtunidade.Text = string.Empty;
            txtrematricula.Text = string.Empty;


        }

        private void carregargrid(projetoescolaEntities conexao)
        {
            //criando a grid e exibindo registros
            var lista = conexao.rematricula.ToList();
            gridrematricula.DataSource = lista;
            gridrematricula.DataBind();

        }

        private void carregaalunos(projetoescolaEntities conexao)
        {
            var lista = conexao.alunos.ToList();
            ddlalunos.DataSource = lista;
            
            //chave estrangeira
            ddlalunos.DataValueField="id";
            //valor que será mostrado
            ddlalunos.DataTextField="nome";
            ddlalunos.DataBind();

        }

    }
}