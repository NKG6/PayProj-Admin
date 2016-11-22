using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PayProj
{
    public partial class AdminWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               // if (Convert.ToString(Session["currentusertype"]) != "Administrator")
                    //Response.Redirect("welcome.aspx");
                DataTable dt = BusinessAccessLayer.Query("select * from employees order by employeeid");
               // gridEmployees.DataSource = dt;
               // gridEmployees.DataBind();
                grdMain.DataSource = dt;
                grdMain.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
        //protected void gridEmployees_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    try
        //    {
        //        int employeeid = Convert.ToInt32(gridEmployees.Rows[e.RowIndex].Cells[0].Text);
        //        Session["deletingemployeeid"] = employeeid;
        //        Response.Redirect("deleteemployee.aspx", false);
        //    }
        //    catch (Exception ex)
        //    {
        //        lblError.Text = "Error: " + ex.Message;
        //    }
        //}

        protected void grdMain_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int employeeid = Convert.ToInt32(grdMain.Rows[e.RowIndex].Cells[0].Text);
                Session["deletingemployeeid"] = employeeid;
                Response.Redirect("deleteemployee.aspx", false);
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
    }
}