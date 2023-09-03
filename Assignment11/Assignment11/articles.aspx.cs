using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment11
{
    public partial class articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server=DESKTOP-OT2PTPM;database=ArticleDb;trusted_connection=true;");
                SqlCommand cmd = new SqlCommand("select * from Articles", con);
                con.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);
                gvArticles.DataSource = ds;
                gvArticles.DataBind();
                LblMsg.Text = "Number of Customers are: " + ds.Tables[0].Rows.Count;
            }
            catch (Exception ex)
            {
                LblMsg.Text = "Error" + ex.Message;
            }
        }
    }
}