using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFDemo
{
    public partial class Department1 : System.Web.UI.Page
    {
        EFDemoEntities db = new EFDemoEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GetDepartments();
        }

        void GetDepartments()
        {
            gvDepartment.DataSource = db.Departments.ToList();
            gvDepartment.DataBind();
        }

        protected void gvDepartment_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void gvDepartment_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int depatmentID = Convert.ToInt32(gvDepartment.DataKeys[e.RowIndex].Value.ToString());
            Department department = db.Departments.SingleOrDefault(d => d.ID == depatmentID);

            if (department != null)
            {
                db.Departments.Remove(department);
                db.SaveChanges();
            }

            GetDepartments();
        }
    }
}