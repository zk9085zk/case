<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="webs_management_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

        <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="帳號:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="密碼:"></asp:Label>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" />  
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
