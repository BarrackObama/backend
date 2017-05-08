using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int i;
        
        int Getal = Convert.ToInt32(tafelT.Text);
        Random generator = new Random();
      
        for (i = 1; i < 6; i++)
        {
            
            Label rek = FindControl("Label" + i) as Label;
           
            int rdmtf = generator.Next(Getal) + 1;
            rek.Text = rdmtf.ToString();
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        int g = 0;
        int c = 0;
        int i = 0;
        int ant = 0;
        int ing = 0;
        for (i = 1; i < 6; i++)
        {
            
            Label gp = FindControl("Label" + i) as Label;
            ant = Convert.ToInt32(gp.Text);
            
            TextBox u = FindControl("TextBox" + i) as TextBox;
            ing = Convert.ToInt32(u.Text);
            
            int som = i * ant;
            
            if (ing == som)
            {
                
                g++;
               
                Label goed = FindControl("Goed" + i) as Label;
                goed.Text = "Goed";
               
                Label fout = FindControl("Fout" + i) as Label;
                fout.Text = "";
            }
            else
            {
               
                Label fout = FindControl("Fout" + i) as Label;
                fout.Text = "Fout";
                
                Label goed = FindControl("Goed" + i) as Label;
                goed.Text = "";
            }
            c = g * 2;
            Label6.Text = c.ToString();
        }
    }

    protected void reset_Click(object sender, EventArgs e)
    {
       Response.Redirect(Request.RawUrl);
    }
}