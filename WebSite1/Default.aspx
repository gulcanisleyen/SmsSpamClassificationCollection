<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="UrunlerDataList" runat="server" RepeatColumns="3" DataKeyField="UrunId"
            OnItemCommand="UrunlerDataList_ItemCommand">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <table width="200px">
                    <tr>
                        <td>
                            <asp:ImageButton CommandName="DetayGoster" CommandArgument='<%#Bind("UrunId") %>'
                                ID="urunresim" ImageUrl='<%#Bind("ResimUrl") %>' runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Bind("UrunAdi") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
