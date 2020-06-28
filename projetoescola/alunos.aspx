<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alunos.aspx.cs" Inherits="projetoescola.alunos1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
            <br />
            <asp:Label ID="lblnome" runat="server" Text="Nome:"></asp:Label>
            <asp:TextBox ID="txtnome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnome" ErrorMessage="Nome obrigatório" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblsobrenome" runat="server" Text="Sobrenome:"></asp:Label>
            <asp:TextBox ID="txtsobrenome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsobrenome" ErrorMessage="Sobre obrigatório" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblcpf" runat="server" Text="CPF:"></asp:Label>
            <asp:TextBox ID="txtcpf" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcpf" ErrorMessage="CPF obrigatório" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lbldtnasc" runat="server" Text="Data de Nascimento:"></asp:Label>
            <asp:TextBox ID="txtdtnasc" runat="server" TextMode="DateTime"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdtnasc" ErrorMessage="Data de Nascimento obrigatório" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblsemestre" runat="server" Text="Semestre:"></asp:Label>
            <asp:TextBox ID="txtsemestre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsemestre" ErrorMessage="Semestre obrigatório" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblunidade" runat="server" Text="Unidade de Ensino:"></asp:Label>
            <asp:TextBox ID="txtunidade" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtunidade" ErrorMessage="Unidade de ensino obrigatório" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnnovo" runat="server" Text="Novo" OnClick="btnnovo_Click" />
&nbsp;<asp:Button ID="btnsalvar" runat="server" OnClick="btnsalvar_Click" Text="Salvar" ValidationGroup="form" />
            &nbsp;<asp:Button ID="btnalterar" runat="server" OnClick="btnalterar_Click" Text="Alterar" />
            <br />
            <br />
            <asp:GridView ID="gridalunos" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" DataKeyNames="id">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:CommandField HeaderText="Selecionar" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
