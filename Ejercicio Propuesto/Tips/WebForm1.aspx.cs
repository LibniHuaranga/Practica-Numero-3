using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tips
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {

        }

        protected void BulletedList1_Click1(object sender, BulletedListEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(@"C:\Users\libni\source\repos\Tips\Tips\upload\"
                + FileUpload1.FileName);
                HyperLink1.Text = FileUpload1.FileName;
                HyperLink1.NavigateUrl = @"upload/" + FileUpload1.FileName;
            }

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView2_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex =Int32.Parse(RadioButtonList1.SelectedValue);
        }
    }
}