using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class CCD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void SqlDataSource2_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void SqlDataSource2_Deleting(object sender, SqlDataSourceCommandEventArgs e)
    {
        Trace.Write(e.Command.CommandText);
    }
    protected void SqlDataSource2_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void SqlDataSource2_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }
}
