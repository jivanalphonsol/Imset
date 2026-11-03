<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewProductCatalogue.aspx.cs" Inherits="Imset.ViewProductCatalogue" %>

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
                <h2>Product Catalogues</h2>
                <p>All catalogues currently available on the website</p>
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="adm-alert" EnableViewState="false" Visible="false"></asp:Label>

            <div class="adm-card">
                <h3>Product Catalogue List</h3>
                <div class="adm-toolbar" style="margin: 0 0 20px;">
                    <a href="AddProductCatalogue.aspx" class="adm-btn">+ Add Catalogue</a>
                </div>
                <div class="adm-table-wrap">
                    <asp:GridView ID="gvCatalog" runat="server" AutoGenerateColumns="false" CssClass="adm-table" GridLines="None" OnRowCommand="gvCatalog_RowCommand" EmptyDataText="No records found." DataKeyNames="ProductCatalog_Id">
                        <EmptyDataRowStyle CssClass="adm-empty" />
                        <Columns>
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
</asp:Content>
