<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rekenmachine.aspx.cs" Inherits="rekenmachine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblGetal1" runat="server" Text="Getal 1"></asp:Label>
&nbsp;<asp:TextBox ID="txtGetal1" runat="server" style="margin-left: 15px"></asp:TextBox>
        *<asp:Button ID="btnOptel" runat="server" OnClick="btnOptel_Click" Text="Optellen" style="margin-left: 15px" Width="100px" />
        <asp:RequiredFieldValidator ID="rfvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Vul getal 1 in!"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="tussen de 1 en 100" MaximumValue="100" MinimumValue="1" Type="Double"></asp:RangeValidator>
        <br />
        <asp:Label ID="lblGetal2" runat="server" Text="Getal 2"></asp:Label>
        <asp:TextBox ID="txtGetal2" runat="server" style="margin-left: 16px" Width="160px"></asp:TextBox>
&nbsp;*
        &nbsp;<asp:Button ID="btnAftrek" runat="server" OnClick="btnAftrek_Click" Text="Aftrekken" style="margin-left: 5px" Width="110px" />
        <asp:RequiredFieldValidator ID="rfvGetal2" runat="server" ControlToValidate="txtGetal2" ErrorMessage="Vul getal 2 in!"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblUitkomst" runat="server" Text="Uitkomst"></asp:Label>
&nbsp;<asp:TextBox ID="txtUitkomst" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTelefoon" runat="server" style="margin-left: 211px; margin-right: 0px"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtGetal1" ControlToValidate="txtGetal2" ErrorMessage="doet niet"></asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefoon" ErrorMessage="wrong" ValidateRequestMode="Enabled" ValidationExpression="\d{3}\s{1}\d{7}" EnableClientScript="False"></asp:RegularExpressionValidator>
    </form>
</body>
</html>
