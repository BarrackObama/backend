<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Oefening8.aspx.cs" Inherits="Oefening8" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int Naam;
        Naam = Convert.ToInt32(Label1.Text);

        if (DateTime.Now.Hour >= 8 && Naam <12)
        {
            Label2.Text = "Goedemorgen";
        }
        else if (DateTime.Now.Hour >= 12 && Naam <18 )
        {
            Label2.Text = "Goedemiddag";
        }
        else
        {
            Label2.Text = "Goedenavond";
        }
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>De nationale begroetingssite </h1>
    
        <br />
        Geef uw naam in:
        <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Druk hier voor de bergroeting" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        , hoe gaat het?</div>
    </form>
</body>
</html>
