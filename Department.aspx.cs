﻿using System;
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
                FillDepartment();
        }

        void FillDepartment()
        {
            gvDepartment.DataSource = db.Departments.ToList();
            gvDepartment.DataBind();
        }
    }
}