using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    public SqlConnection cnn=new SqlConnection(ConfigurationManager.AppSettings["dbpath"]);


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
            BindNation();
    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText="insert into tblUser (UInfo,UBirth,UGender,UCntID,UEdu,UName,UPass,UAdd,UMail) Values (@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8,@P9)";
        cmd.Parameters.AddWithValue("@P1", txtName.Text);
        cmd.Parameters.AddWithValue("@P2", txtBirth.Text);
        cmd.Parameters.AddWithValue("@P3", rdbMale.Checked);
        cmd.Parameters.AddWithValue("@P4", drpNation.SelectedValue);
        if (rdbAS.Checked == true) cmd.Parameters.AddWithValue("@P5", rdbAS.Text);
        if (rdbBA.Checked == true) cmd.Parameters.AddWithValue("@P5", rdbBA.Text);
        if (rdbMA.Checked == true) cmd.Parameters.AddWithValue("@P5", rdbMA.Text);
        if (rdbPhd.Checked == true) cmd.Parameters.AddWithValue("@P5", rdbPhd.Text);
        cmd.Parameters.AddWithValue("@P6", txtUserName.Text);
        cmd.Parameters.AddWithValue("@P7", txtPassword.Text);
        cmd.Parameters.AddWithValue("@P8", txtAdress.Text);
        cmd.Parameters.AddWithValue("@P9", txtEmail.Text);
        cnn.Open();
        cmd.ExecuteNonQuery();
        cnn.Close();
        Response.Redirect("login.aspx");
        

    }

    void BindNation()
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "Select * from tblNation Order by CntName";
        cnn.Open();
        drpNation.DataSource = cmd.ExecuteReader();
        drpNation.DataTextField = "CntName";
        drpNation.DataValueField = "CntID";
        drpNation.DataBind();
        cnn.Close();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}