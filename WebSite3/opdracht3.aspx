<%@ Page Language="C#" AutoEventWireup="true" CodeFile="opdracht3.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #CC0000;
        }
        .auto-style3 {
            width: 123px;
        }
        #countdown {
            background-color:gray;
        }
        .auto-style4 {
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Calendar ID="kalVerjaardag" OnSelectionChanged="SelectionChanged" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" SelectedDate="1995-01-01" VisibleDate="1995-01-01" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
    </div>
        <asp:Button ID="btnLeeftijd" runat="server" onClick="btnleeftijd_click" Text="Bereken leeftijd" />
        <p>
            U heeft de datum geselecteerd:</p>
        <p>
            <asp:Label ID="selectedDate" runat="server" Text=""></asp:Label>
        </p>
        <asp:Label ID="leeftijd" runat="server" Text=""></asp:Label>
    <br/>
   
      
        </form>
        
        
        
</body>
</html>
