using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoescola
{
    public partial class alunos1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            projetoescolaEntities conexao = new projetoescolaEntities();
            atualizaGrid(conexao);


        }

        protected void txtaluno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsalvar_Click(object sender, EventArgs e)
        {
            //criando conexao com o banco de dados
            projetoescolaEntities conexao = new projetoescolaEntities();
            
            //instanciando o objeto aluno
            alunos aluno = new alunos();
            aluno.nome = txtnome.Text;
            aluno.sobrenome = txtsobrenome.Text;
            aluno.cpf = txtcpf.Text;
            aluno.datanascimento =Convert.ToDateTime(txtdtnasc.Text);
            aluno.semestre =Convert.ToInt32(txtsemestre.Text);
            aluno.unidade = txtunidade.Text;


            //salvando RAM
            conexao.alunos.Add(aluno);

            //salvando no banco de dados
            conexao.SaveChanges();

            limpar();
            
            atualizaGrid(conexao);



            


        }
        
        private void limpar()
        {
            txtnome.Text = string.Empty;
            txtsobrenome.Text = string.Empty;
            txtcpf.Text = string.Empty;
            txtdtnasc.Text = string.Empty;
            txtsemestre.Text = string.Empty;
            txtunidade.Text = string.Empty;
        }

        protected void btnnovo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        private void atualizaGrid(projetoescolaEntities conexao)
        {

            var lista = conexao.alunos.ToList();
            gridalunos.DataSource = lista;
            gridalunos.DataBind();


        }
    }
}