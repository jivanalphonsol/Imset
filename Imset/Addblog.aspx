<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Addblog.aspx.cs" Inherits="Imset.Addblog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta name="description" content="Learn functionality of biological safety cabinets , how it ensures safety in environments with high risk factors and their role in laboratory protection | Imset">
   
    <style>
        .Maindiv {
            display: flex;
            justify-content: center;
            align-items: center;
            /*   height: 100vh;*/
            margin: 20px;
        }

        .form-container {
            width: 70%;
            height: 65vh;
            /*  padding: 20px;*/
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-container1 {
            width: 70%;
            height: 30vh;
            /*  padding: 20px;*/
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-group {
            /* margin-bottom: 5px;*/
        }

            .form-group label {
                display: block;
                /* margin-bottom: 5px;*/
            }

            .form-group input {
                width: 100%;
                /*   padding: 5px;*/
                border: 1px solid #ccc;
                border-radius: 3px;
            }

        .btn-submit {
            display: block;
            width: 100%;
            padding: 3px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

            .btn-submit:hover {
                background-color: #0056b3;
            }
    </style>
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1">
</script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-186965253-1');
</script>
      <!-- Google analytics code start-->
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-296464365-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-296464365-1');
</script>
      <!-- Google analytics code End-->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <asp:Button ID="Add_card_blog" class="main-btn wow fadeInDown" Text="Add card Blog" runat="server" OnClick="Add_card_blog_Click" />
            </div>
            <div class="col-md-3">
                <asp:Button ID="Add_subblog" class="main-btn wow fadeInDown" Text="Add Subblog" runat="server" OnClick="Add_subblog_Click" />

            </div>
        </div>
    </div>
    <!-- Card Form start -->

    <div class="Maindiv" id="MainBlog" runat="server" visible="false">
        <div class="form-container">
            <div class=" col-lg-10">
                <label class="control-label">Upload Image</label>
                <asp:FileUpload ID="blogIMG" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="reqBlogImg" runat="server" ControlToValidate="blogIMG" ValidationGroup="AddBlog"
                    ErrorMessage="Please Upload Image" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-10">
                <label class="control-label">Add title </label>
                <asp:TextBox runat="server" ID="txt_title" Rows="2" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="reqTitle" runat="server" ControlToValidate="txt_title" ValidationGroup="AddBlog"
                    ErrorMessage="Please Enter Title" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-lg-10">
                <label class="control-label">Add Description </label>
                <asp:TextBox runat="server" ID="txt_description" TextMode="MultiLine" Rows="2" Columns="50" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="ReqDescription" runat="server" ControlToValidate="txt_description" ValidationGroup="AddBlog"
                    ErrorMessage="Please Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-lg-10 m-3">
                <div>
                <asp:Button ID="Add_Blog" class="main-btn wow fadeInDown" Text="Submit" runat="server" OnClick="Add_Blog_Click" ValidationGroup="AddBlog" />
            </div>
                </div>
        </div>
    </div>

      <!-- Card Form End -->


    <!--Gridview Form Start for add tag -->

    <div class="Maindiv" id="Subblog" runat="server" visible="false">
        <div class="form-container1">
            <div class="col-lg-10">
                <label class="control-label">Please Insert how many tag add</label>
                <asp:TextBox ID="Txtsubblogdesciption" runat="server" CssClass="form-control" onkeypress="return isNumber(event);" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtsubblogdesciption" ValidationGroup="AddBlogSubblog"
                    ErrorMessage="Plese Insert how many tag add" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group col-lg-10">
                <asp:Button ID="Add_sublog" class="main-btn wow fadeInDown" Text="Submit" runat="server" OnClick="Add_sublog_Click" ValidationGroup="AddBlogSubblog" />
            </div>
        </div>
    </div>

     <!--Gridview Form End for add tag -->




    <!-- Add tag Gridview start -->

    <div class="container" id="gridview_Main_blog" runat="server" visible="false">
        <asp:GridView ID="BlogGridview" runat="server" AutoGenerateColumns="false" class="table table-striped table-bordered box-shadow"
            OnRowEditing="BlogGridview_RowEditing" OnRowUpdating="BlogGridview_RowUpdating" OnRowCancelingEdit="BlogGridview_RowCancelingEdit" OnRowDeleting="BlogGridview_RowDeleting" DataKeyNames="Blog_id">
            <Columns>
                <%--  <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" EditText="Edit" UpdateText="Update" CancelText="Cancel" />--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <%-- <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />--%>
                        <%-- <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="Delete" />--%>
                        <asp:LinkButton ID="btn_Edit" runat="server" class="fa fa-edit" CommandName="Edit" />
                        <asp:LinkButton ID="btn_Delete" runat="server" class="fa fa-trash-o" CommandName="Delete" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" ValidationGroup="UpdateBlog"/>
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Blog Id">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Blog_id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Id" runat="server" Text='<%#Eval("Blog_id") %>' ReadOnly="true" Width="20px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label ID="lbltxttitle" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txttitle" Text='<%#Eval("Title")%>' CssClass="txt form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="ReqtxtTitle" runat="server" ControlToValidate="txttitle" ValidationGroup="UpdateBlog"
                    ErrorMessage="Please Enter Title" ForeColor="Red"></asp:RequiredFieldValidator>
            
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="lbltxtDesc" runat="server" Text='<%#Eval("Description") %>'> </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescription" Text='<%#Eval("Description")%>' runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="ReqtxtDescription" runat="server" ControlToValidate="txtDescription" ValidationGroup="UpdateBlog"
                    ErrorMessage="Please Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
            
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagepath") %>' Height="20px" Width="30px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagepath") %>' Height="20px" Width="30px" />
                        <asp:FileUpload ID="FileImageSave" runat="server" />
                       
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

      <!-- Add tag Gridview start -->





    <!-- Region start Add Gridview Data -->

    <div class="container" id="SubblogDiv" runat="server" visible="false">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" Visible="false" CssClass="table table-striped table-bordered table-hover" OnRowDataBound="GridView2_RowDataBound">
            <Columns>

                <asp:TemplateField HeaderText="Enter Blog id">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSrno" runat="server" Text='<%# Eval("SRNO") %>' onkeypress="return isNumber(event);" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="reqBlogId" runat="server" ControlToValidate="txtSrno" ValidationGroup="Addtag"
                            ErrorMessage="Please Insert Blog id" ForeColor="Red"></asp:RequiredFieldValidator>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Enter Tag description">
                    <ItemTemplate>
                        <asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("Description") %>' Visible="true" ValidateRequestMode="Disabled" CssClass="form-control" Rows="5" Columns="50" />
                        <asp:RequiredFieldValidator ID="ReqTagDescription" runat="server" ControlToValidate="txtDescription"
                            ErrorMessage="Please Enter Description" ForeColor="Red" ValidationGroup="Addtag"></asp:RequiredFieldValidator>
                        <asp:FileUpload ID="fileUpload" runat="server" Visible="false" />
                        <asp:RequiredFieldValidator ID="reqfilevalidator"  ControlToValidate="fileUpload" ValidationGroup="Addtag"
                            ErrorMessage="Please Upload File" ForeColor="Red" Visible="false" runat="server"></asp:RequiredFieldValidator>

                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Please Select Tag">
                    <ItemTemplate>

                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlhtmltag" Visible="true" OnSelectedIndexChanged="ddlhtmltag_SelectedIndexChanged" AutoPostBack="true">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="ReqTag" runat="server" ControlToValidate="ddlhtmltag" InitialValue="0" ValidationGroup="Addtag"
                            ErrorMessage="Please select Tag" ForeColor="Red"></asp:RequiredFieldValidator>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div id="Subblog_grid_submit" runat="server" visible="false" class="mt-4 ml-0 mb-4 ">
            <asp:Button ID="SaveBlogtag" class="main-btn wow fadeInDown" Text="Submit" runat="server" OnClick="SaveBlogtag_Click" ValidationGroup="Addtag" />

        </div>

    </div>

     <!-- Region End Add Gridview Data -->


   <!-- Region Start Subblog Gridview -->

    <div class="container" id="SubblogGridview" runat="server" visible="false">
        <asp:GridView ID="Sub_Bloggridviewdata" runat="server" AutoGenerateColumns="false" class="table table-striped table-bordered box-shadow"
            DataKeyNames="Main_blog_id" OnRowDataBound="Sub_Bloggridviewdata_RowDataBound" OnRowCancelingEdit="Sub_Bloggridviewdata_RowCancelingEdit" OnRowEditing="Sub_Bloggridviewdata_RowEditing" OnRowDeleting="Sub_Bloggridviewdata_RowDeleting" OnRowUpdating="Sub_Bloggridviewdata_RowUpdating">
            <Columns>
                <%--  <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-primary" EditText="Edit" UpdateText="Update" CancelText="Cancel" />--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <%-- <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />--%>
                        <%-- <asp:Button ID="Button1" runat="server" Text="Delete" CommandName="Delete" />--%>
                        <asp:LinkButton ID="btn_Edit" runat="server" class="fa fa-edit" CommandName="Edit" />
                        <asp:LinkButton ID="btn_Delete" runat="server" class="fa fa-trash-o" CommandName="Delete" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" />
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Blog Id" ItemStyle-Width="70px">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Blog_id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Id" runat="server" Text='<%#Eval("Blog_id") %>' Width="20px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Description" ItemStyle-Width="500px">
                    <ItemTemplate>
                        <asp:Label ID="lbltxtDesc" runat="server" Text='<%#Eval("Description") %>'> </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescription" Text='<%#Eval("Description")%>' runat="server" CssClass="form-control" ValidateRequestMode="Disabled" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Please Select Tag" ItemStyle-Width="200px" >
                    <ItemTemplate>
                        <asp:Label ID="lblTag" runat="server" Text='<%# Bind("Tag_Id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlhtmltagEdit">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="ReqTag" runat="server" ControlToValidate="ddlhtmltagEdit" InitialValue="0"
                            ErrorMessage="Please select Tag" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagepath") %>' Height="20px" Width="30px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagepath") %>' Height="20px" Width="30px" />
                        <asp:FileUpload ID="FileImageSave" runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

    
   <!-- Region Start Subblog Gridview -->

    <script>
        function isNumber(evt) {
            debugger
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
