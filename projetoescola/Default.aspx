<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projetoescola.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Lblusuario" runat="server" Text="Usuário"></asp:Label>
        <asp:TextBox ID="Txtusuario" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Lblsenha" runat="server" Text="Senha"></asp:Label>
        <asp:TextBox ID="Txtsenha" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Btnentrar" runat="server" Text="Entrar" />
        <br />
    </form>
</body>
</html>
