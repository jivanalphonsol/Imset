<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewLeadgeneration.aspx.cs" Inherits="Imset.ViewLead" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section {
            padding: 60px 0;
        }

        .section-bg {
            background-color: #f5f9fc;
        }

        .section-title {
            text-align: center;
            padding-bottom: 30px;
        }

            .section-title h2 {
                font-size: 32px;
                font-weight: 600;
                margin-bottom: 20px;
                padding-bottom: 0;
                color: #007584;
            }

            .section-title p {
                margin-bottom: 0;
            }
    </style>
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-186965253-1">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
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
    <section id="products" class="services section-bg">
         <div class="container">
            <div class="section-title">
                <h2>Contact Us Form Leads</h2>
            </div>

            <div class="row portfolio-container">
                <%--<div class="col-sm-12" style="margin: 10px; text-align: end;">
                        <asp:Button Text="Export To Excel" CssClass="btn-info" runat="server" ID="btnExport" Visible="false" OnClick="btnExport_Click" />
                    </div>--%>
                <div style="max-width: 1570px; overflow-y: scroll;">
                    <asp:GridView runat="server" ID="Contactusleadgrd" class="table table-condensed table-striped table-bordered" ShowHeaderWhenEmpty="true" AllowPaging="true" OnPageIndexChanging="grdLeadDetails_PageIndexChanging">
                        <HeaderStyle Width="30%" />
                        <RowStyle Width="30%" />
                        <EmptyDataTemplate>
                            <div align="center">No records found.</div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div id="Div1" runat="server"  class="mt-4 ml-0 mb-4 ">
                      <asp:Button ID="LeadContactuspage" runat="server" Text="Export to Excel" class="main-btn wow fadeInDown" OnClick="LeadContactuspage_Click" />
                </div>
            </div>

        </div>

        <div class="container">
            <div class="section-title">
                <h2>Quatation Form Leads</h2>
            </div>

            <div class="row portfolio-container">
                <%--<div class="col-sm-12" style="margin: 10px; text-align: end;">
                        <asp:Button Text="Export To Excel" CssClass="btn-info" runat="server" ID="btnExport" Visible="false" OnClick="btnExport_Click" />
                    </div>--%>
                <div style="max-width: 1570px; overflow-y: scroll;">
                    <asp:GridView runat="server" ID="grdLeadDetails" class="table table-condensed table-striped table-bordered" ShowHeaderWhenEmpty="true" AllowPaging="true" OnPageIndexChanging="grdLeadDetails_PageIndexChanging">
                        <HeaderStyle Width="30%" />
                        <RowStyle Width="30%" />
                        <EmptyDataTemplate>
                            <div align="center">No records found.</div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div id="Subblog_grid_submit" runat="server"  class="mt-4 ml-0 mb-4 ">
                    <asp:Button ID="Add_Blog" class="main-btn wow fadeInDown" Text="Add Blog" runat="server" OnClick="Add_Blog_Click" />
                    <asp:Button ID="ExportButton" runat="server" Text="Export to Excel" class="main-btn wow fadeInDown" OnClick="ExportButton_Click" />
                </div>
            </div>

        </div>
    </section>
        
</asp:Content>
   

