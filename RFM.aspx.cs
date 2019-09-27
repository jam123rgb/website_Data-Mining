using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class RFM : System.Web.UI.Page
{
    SqlConnection objConnection = new
SqlConnection("Server=localhost;Database=datamining.mdf;Integrated Security=True;" +
    " Connect Timeout=30;User Instance=True;");

    SqlDataAdapter objDataAdapter = new SqlDataAdapter();
    DataSet objDataSet = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
