<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Download_File.aspx.cs" Inherits="Users_Download_File" %>
<%@ Register TagPrefix="uc1" TagName="header" Src="~/Users/Includes/Header.ascx" %>
<%@ Register TagPrefix="uc2" TagName="footer" Src="~/Users/Includes/Footer.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-out">
        <div class="page-in">
            <div class="page">
                <div class="main">
                    <uc1:header ID="header" runat="server" />
                    <div class="content">
                        <table class="style1" cellpadding="5" cellspacing="5" width="100%">
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style3">
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Secret Key:-
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txtsecret_key" runat="server" Height="24px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtsecret_key" ErrorMessage="Secret Key Mendatory"></asp:RequiredFieldValidator>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    Key 1:-</td>
                                <td class="style3">
                                    <asp:TextBox ID="txtkey1" runat="server" Height="24px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtkey1" ErrorMessage="Key1 Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Key 
                                    2:-&nbsp;
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txtkey2" runat="server" Height="24px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtkey2" ErrorMessage="Key2 Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Key 3:-</td>
                                <td class="style3">
                                    <asp:TextBox ID="txtkey3" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtkey3" ErrorMessage="Key3 Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Key 
                                    4:-</td>
                                <td class="style3">
                                    <asp:TextBox ID="txtkey4" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtkey4" ErrorMessage="Key4  Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Key 
                                    5:-</td>
                                <td class="style3">
                                    <asp:TextBox ID="txtkey5" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtkey5" ErrorMessage="Key5 Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Key 
                                    6:-</td>
                                <td class="style3">
                                    <asp:TextBox ID="txtkey6" runat="server" Height="25px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtkey6" ErrorMessage="Key6 Required"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style3">
                                    <asp:Button ID="btndownload" runat="server" Height="25px" Text="Download" 
                                        Width="70px" OnClick="btnSave_Click" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Height="25px" Text="Cancel" 
                                        Width="70px" />
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td class="style3">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                    <uc2:footer ID="footer" runat="server" />
                </div>
            </div>
        </div>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
