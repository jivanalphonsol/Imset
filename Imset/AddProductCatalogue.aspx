<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddProductCatalogue.aspx.cs" Inherits="Imset.AddProductCatalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="robots" content="noindex, nofollow" />
    <link href="assets/css/admin-theme.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <section class="adm-section">
        <div class="container">
            <div class="adm-header">
                <h2>Product Catalogue Management</h2>
                <p>Add, edit and remove the catalogues shown to customers</p>
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="adm-alert" EnableViewState="false" Visible="false"></asp:Label>

            <div class="adm-card" id="formCard">
                <h3 id="formTitle" runat="server">Add New Product Catalogue</h3>
                <asp:HiddenField ID="hfCatalogId" runat="server" Value="0" />

                <div class="adm-group">
                    <label>Title <span style="color: red">*</span></label>
                    <asp:TextBox ID="txtTitle" runat="server" MaxLength="200" placeholder="Enter product title" />
                    <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="Title is required." ForeColor="Red" Display="Dynamic" ValidationGroup="vgCatalog" />
                </div>

                <div class="adm-group">
                    <label>Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" MaxLength="1000" placeholder="Enter description (optional)" />
                </div>

                <div class="adm-group">
                    <label>PDF File <span style="color: red" id="pdfRequired" runat="server">*</span></label>
                    <div class="adm-file">
                        <asp:FileUpload ID="fuPdf" runat="server" accept=".pdf" />
                    </div>
                    <div class="adm-hint">Only PDF files are accepted (max 10 MB).</div>
                    <asp:Label ID="lblCurrentPdf" runat="server" Visible="false" />
                </div>

                <div class="adm-toolbar">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="adm-btn" ValidationGroup="vgCatalog" OnClick="btnSave_Click" />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="adm-btn adm-btn-secondary" CausesValidation="false" OnClick="btnCancel_Click" />
                </div>
            </div>

            <div class="adm-card">
                <h3>Product Catalogue List</h3>
                <div class="adm-table-wrap">
                    <asp:GridView ID="gvCatalog" runat="server" AutoGenerateColumns="false" CssClass="adm-table" GridLines="None" OnRowCommand="gvCatalog_RowCommand" EmptyDataText="No records found." DataKeyNames="ProductCatalog_Id">
                        <EmptyDataRowStyle CssClass="adm-empty" />
                        <Columns>
                            <asp:BoundField DataField="ProductCatalog_Id" HeaderText="#" />
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Description" HeaderText="Description" />
                            <asp:TemplateField HeaderText="PDF File">
                                <ItemTemplate>
                                    <a class="pdf-badge" href='<%# ResolveUrl("~/" + Eval("PdfFile")) %>' target="_blank" rel="noopener"><%# Server.HtmlEncode(Convert.ToString(Eval("PdfFileName"))) %></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Created_Date" HeaderText="Created On" DataFormatString="{0:dd-MMM-yyyy}" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="EditRow" CommandArgument='<%# Eval("ProductCatalog_Id") %>' CssClass="action-btn btn-edit" CausesValidation="false">Edit</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteRow" CommandArgument='<%# Eval("ProductCatalog_Id") %>' CssClass="action-btn btn-del" CausesValidation="false" OnClientClick="return confirm('Are you sure you want to delete this record?');">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>

    <script type="text/javascript">
        (function () {
            var hf = document.getElementById('<%= hfCatalogId.ClientID %>');
            if (hf && parseInt(hf.value, 10) > 0) {
                var card = document.getElementById('formCard');
                if (card) {
                    card.scrollIntoView({ behavior: 'smooth', block: 'start' });
                    card.classList.add('edit-mode');
                }
            }
        })();
    </script>
</asp:Content>
