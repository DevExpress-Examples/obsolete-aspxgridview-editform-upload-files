using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Grid_Editing_EditFormUploadFile_EditFormUploadFile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void UploadBtn_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            Label1.Text = FileUpload1.FileName;
        }
    }
    protected void grid_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        throw new InvalidOperationException("Data modifications are not allowed in the online demo");
    }
}
