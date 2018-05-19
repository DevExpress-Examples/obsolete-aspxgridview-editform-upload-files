<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Grid_Editing_EditFormUploadFile_EditFormUploadFile" %>

<%-- BeginRegion Page setup --%>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"  Namespace="System.Web.UI" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>How to Upload Files from the EditForm</title>
    <style type="text/css">
        .note {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        &nbsp; &nbsp;&nbsp;

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ScriptManager>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
            DataSourceID="AccessDataSource1" KeyFieldName="CustomerID" OnRowUpdating="grid_RowUpdating">
            <Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0">
                <EditButton Visible="True"></EditButton>
                </dxwgv:GridViewCommandColumn>
                <dxwgv:GridViewDataTextColumn ReadOnly="True" VisibleIndex="1" FieldName="CustomerID"></dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn VisibleIndex="2" FieldName="CompanyName"></dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn VisibleIndex="3" FieldName="City"></dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn VisibleIndex="4" FieldName="Country"></dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn VisibleIndex="5" Caption="Upload">
                <EditItemTemplate>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="conditional">
                    <Triggers>
                        <asp:PostBackTrigger ControlID="UploadBtn" />
                    </Triggers>
                    <ContentTemplate><br />
                        <table><tr><td colspan="2"><asp:FileUpload ID="FileUpload1" runat="server" Width="270px" /></td></tr>
                        <tr><td>File Uploaded:&nbsp;<asp:Label ID="Label1" runat="server" BackColor="#FFFF80"></asp:Label></td>
                        <td align="right"><asp:Button ID="UploadBtn" runat="server"
                        Text="Upload" OnClick="UploadBtn_Click" /></td></tr>
                        </table>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                </EditItemTemplate>
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            </dxwgv:ASPxGridView>
        <br />
         <span class="note">Note: Uploading image file maximum size is 4096Kb</span>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [City], [Country]) VALUES (?, ?, ?, ?)"
            SelectCommand="SELECT [CustomerID], [CompanyName], [City], [Country] FROM [Customers]"
            UpdateCommand="UPDATE [Customers] SET [CompanyName] = ?, [City] = ?, [Country] = ? WHERE [CustomerID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="CustomerID" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>

    </form>

</body>
</html>