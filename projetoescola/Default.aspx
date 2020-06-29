<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="projetoescola.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="design.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sistema da Escola</title>
</head>
<body>
    <form id="form1" runat="server">
      <div class ="quadro">
          <h2>Seja Bem Vindo!!</h2>
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
        <div>
            <asp:Label ID="Lblusuario" runat="server" Text="Usuário"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="Txtusuario" ErrorMessage="Usuário Obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
        
        </div>
        <div>
            <asp:TextBox ID="Txtusuario" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Lblsenha" runat="server" Text="Senha"></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtsenha" ErrorMessage="Senha Obrigatório" ForeColor="Red">*</asp:RequiredFieldValidator>
       
        </div>
        <div>
            <asp:TextBox ID="Txtsenha" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Btnentrar" runat="server" OnClick="Btnentrar_Click" Text="Entrar" />
        </div>
      </div>   
    </form>
</body>
</html>
