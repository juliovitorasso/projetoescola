using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetoescola
{
    public partial class consultaralunos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            //criar a conexao com o banco de dados
            projetoescolaEntities conexao = new projetoescolaEntities();

            //definir o criterio de busca
            List<alunos> listabusca = 
            conexao.alunos.Where
                (linha => linha.nome.Contains(txtbuscar.Text)).ToList();
            
            //atribui lista ao grid
            gridbusca.DataSource = listabusca;
            gridbusca.DataBind();


        
        
        }
    }
}