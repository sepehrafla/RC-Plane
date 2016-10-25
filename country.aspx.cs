using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class country : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(ConfigurationManager.AppSettings["dbpath"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "Insert into tblNation (CntName,CntTag) Values (@p1,@p2)";
        cmd.Parameters.AddWithValue("@p1", txtCountry.Text);
        cmd.Parameters.AddWithValue("@p2", txtTag.Text.ToUpper());
        cnn.Open();
        cmd.ExecuteNonQuery();
        cnn.Close();
        Response.Redirect("Menu.aspx");

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
}