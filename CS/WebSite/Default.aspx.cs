using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    public  string getClientID(string colName, string controlName) {

        TextBox t = (TextBox)grid.FindHeaderTemplateControl(grid.Columns[colName], controlName);
        return t.ClientID;
    }
}