using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFDemo
{
    public partial class Add : System.Web.UI.Page
    {
        EFDemoEntities db = new EFDemoEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSaveDepartment_Click(object sender, EventArgs e)
        {
            using(db)
            {
                var department = new Department()
                {
                    Name = txtName.Text,
                    Location = txtLocation.Text
                };

                db.Departments.Add(department);
                db.SaveChanges();
            }

            Response.Redirect("Department.aspx");
        }
    }
}