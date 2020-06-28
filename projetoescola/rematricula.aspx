<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rematricula.aspx.cs" Inherits="projetoescola.rematricula1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Label ID="lblaluno" runat="server" Text="Aluno:"></asp:Label>
            <asp:DropDownList ID="ddlalunos" runat="server" Height="16px" Width="149px">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlalunos" ErrorMessage="Aluno obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblsobrenome" runat="server" Text="Sobrenome:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="sobrenome" DataValueField="sobrenome">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projetoescolaConnectionString %>" SelectCommand="SELECT [sobrenome] FROM [alunos]"></asp:SqlDataSource>
            <asp:Label ID="lblcpf" runat="server" Text="CPF:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="cpf" DataValueField="cpf">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projetoescolaConnectionString2 %>" SelectCommand="SELECT [cpf] FROM [alunos]"></asp:SqlDataSource>
            <asp:Label ID="lbldtnasc" runat="server" Text="Data de nascimento:"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="datanascimento" DataValueField="datanascimento">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projetoescolaConnectionString3 %>" SelectCommand="SELECT [datanascimento] FROM [alunos]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="lblsemestre" runat="server" Text="Semestre:"></asp:Label>
            <asp:TextBox ID="txtsemestre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsemestre" ErrorMessage="Semestre obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblunidade" runat="server" Text="Unidade de ensino:"></asp:Label>
            <asp:TextBox ID="txtunidade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtunidade" ErrorMessage="Unidade de ensino obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblrematricula" runat="server" Text="Rematricula:"></asp:Label>
            <asp:TextBox ID="txtrematricula" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtrematricula" ErrorMessage="Confirme a rematricula com sim ou não" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="btnlimpar" runat="server" OnClick="btnlimpar_Click" Text="Limpar" />
&nbsp;<asp:Button ID="btnsalvar" runat="server" OnClick="btnsalvar_Click" Text="Salvar" />
            <br />
            <br />
            <asp:GridView ID="gridrematricula" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
