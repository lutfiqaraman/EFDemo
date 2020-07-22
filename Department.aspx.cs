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
        protected void Page_Load(object sender, EventArgs e)
        {
            EFDemoEntities entities = new EFDemoEntities();

            gvDepartment.DataSource = entities.Departments.ToList();
            gvDepartment.DataBind();
        }
    }
}