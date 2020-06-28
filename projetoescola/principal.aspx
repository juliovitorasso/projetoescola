<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="projetoescola.principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


        <asp:Label ID="lblusuariologado" runat="server" Text="Label"></asp:Label>
&nbsp; (
        <asp:LinkButton ID="lbsair" runat="server" OnClick="lbsair_Click">Sair</asp:LinkButton>
&nbsp;)</div>
        <div>
           <a href="alunos.aspx">Cadastro de Alunos</a><br />
           <a href="rematricula.aspx">Gerenciar rematricula e semestre do aluno</a>
        </div>
    </form>
</body>
</html>
