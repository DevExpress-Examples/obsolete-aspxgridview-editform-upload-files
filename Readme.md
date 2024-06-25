<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# OBSOLETE - How to upload files from the EditForm


<p>This example is now <strong>OBSOLETE</strong>.<br />
It was prepared for older DXperience builds (v7.3).</p><p>At present, we recommend using the solutions illustrated in the following examples:<br />
<a href="https://www.devexpress.com/Support/Center/p/E2933">E2933: Inserting of a new row in ASPxGridView with the image preview enabled</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E95">E95: Image Upload in ASPxGridView</a></p><p><strong>OBSOLETE:</strong><br />
Use an UploadPanel to enable file uploading inside the EditForm of the ASPxGridView. A full postback is currently required to use the FileUpload component. You can still use the FileUpload by instructing the UpdatePanel to do a postback for this control. The ASPxGridView will still use callbacks. To Enable: Put a FileUpload component inside of the UpdatePanel. Put the UpdatePanel inside the EditItemTemplate. Set a Trigger for the UpdatePanel to do a FullPostBack when uploading a file. Now handle the file on the server-side as you need.</p>

<br/>


