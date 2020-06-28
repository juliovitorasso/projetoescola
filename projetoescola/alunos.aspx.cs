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
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] != null)
                {
                    projetoescolaEntities conexao = new projetoescolaEntities();
                    atualizaGrid(conexao);
                }
                else
                {
                    //usuario nao está logado
                    Response.Redirect("Default.aspx");
                }
            }

        }

        protected void txtaluno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsalvar_Click(object sender, EventArgs e)
        {
            //criando conexao com o banco de dados
            projetoescolaEntities conexao = new projetoescolaEntities();
            
            //verifica se está inserindo ou alterando
            if(gridalunos.SelectedValue ==null)
            {
                //inserindo
                //instanciando o objeto aluno
                alunos aluno = new alunos();
                aluno.nome = txtnome.Text;
                aluno.sobrenome = txtsobrenome.Text;
                aluno.cpf = txtcpf.Text;
                aluno.datanascimento = Convert.ToDateTime(txtdtnasc.Text);
                aluno.semestre = txtsemestre.Text;
                aluno.unidade = txtunidade.Text;
                conexao.alunos.Add(aluno);

            }
            else
            {
                //alterando
                //busca registro de aluno no banco de dados de acordo
                //com o registro selecionado na grid
                alunos aluno = conexao.alunos.FirstOrDefault(
                    linha => linha.id.ToString().
                    Equals(gridalunos.SelectedValue.ToString()));
                
                //altera os campos do objeto
                aluno.nome = txtnome.Text;
                aluno.sobrenome = txtsobrenome.Text;
                aluno.cpf = txtcpf.Text;
                aluno.datanascimento = Convert.ToDateTime(txtdtnasc.Text);
                aluno.semestre = txtsemestre.Text;
                aluno.unidade = txtunidade.Text;
                
                //altera os registros no banco
                conexao.Entry(aluno);

                //remove seleção de registro da grid
                gridalunos.SelectedIndex = -1;


            }

            //Efetiva inserção ou alteração
            conexao.SaveChanges();

            //limpa os campos da tela
            limpar();
            
            //atualiza os registros no grid
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

        protected void btnalterar_Click(object sender, EventArgs e)
        {
            if(gridalunos.SelectedValue !=null)
            {
                projetoescolaEntities conexao = new projetoescolaEntities();

                //obtem registro selecionado na grid
                int idselicionado =
                    Convert.ToInt32(gridalunos.SelectedValue.ToString());

                //busca registro no banco de dados
                alunos a = conexao.alunos.FirstOrDefault(
                    linha => linha.id.ToString().Equals(idselicionado.ToString()));

                //alimenta campos do formulario
                txtnome.Text = a.nome;
                txtsobrenome.Text = a.sobrenome;
                txtcpf.Text = a.cpf;
                txtdtnasc.Text = Convert.ToString(a.datanascimento);
                txtsemestre.Text = a.semestre;
                txtunidade.Text = a.unidade;
            
            
            }



        }
    }
}