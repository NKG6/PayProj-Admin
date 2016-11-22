using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayProj
{
    public partial class adminDeleteEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // if (Convert.ToString(Session["currentusertype"]) != "Administrator")
                //Response.Redirect("welcome.aspx");
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
        protected void lnkYes_Click(object sender, EventArgs e)
        {
            try
            {
                int employeeid = Convert.ToInt32(Session["deletingemployeeid"]);
                //int employeeid = Convert.ToInt32("deletingemployeeid");
                string sqlstr = "delete from employees where employeeid=" + employeeid;
                BusinessAccessLayer.NonQuery(sqlstr);
                Session["deletingemployeeid"] = null;

                Response.Redirect("adminEmployees.aspx", false);
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
        protected void lnkNo_Click(object sender, EventArgs e)
        {
            try
            {
                Session["deletingemployeeid"] = null;
                Response.Redirect("adminEmployees.aspx", false);
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
    }
}