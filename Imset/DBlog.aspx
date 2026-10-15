<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DBlog.aspx.cs" Inherits="Imset.DBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {
            font-size: 35px;
            font-weight: 500;
            text-align: left;
        }

        h2 {
            font-size: 30px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        h3 {
            font-size: 27px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        h4 {
            font-size: 25px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        h5 {
            font-size: 23px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        h6 {
            font-size: 20px;
            font-weight: 500;
            text-align: left;
            padding-top: 8px;
        }

        p {
            text-align: justify;
            padding-top:10px;
            color:black;
            font-size:18px;
        }

        .inline-list1 {
            list-style-type: disc;
            padding: 20px;
        }

            .inline-list1 li {
                margin: 10px;
            }

        .Underlinedecorate {
            text-decoration: underline;
            text-decoration-color: orange;
            text-underline-offset: 7px;
            text-decoration-thickness: 3px;
            font-size: 22px;
            color: black;
            padding-top: 10px;
            padding-left: 10px;
        }

        .SidebarStyle {
            background: #F0F0F0;
            padding-left: 5px;
            padding-top: 20px;
        }




        button {
            border: none;
        }

        .container-fluid1 {
            margin-left: 50px;
            margin-right: 30px;
        }

        .mySlides1 {
       /*     width: 650px;
            height: 600px;*/
         /*   width: 550px;
            height: 400px;*/
            display: block;
            padding-top:15px;
            padding-bottom:10px;
            margin-left: auto;
            margin-right: auto;
        }

        input[type="submit" i] {
            border-width: 0px;
            text-align:start;
           
        }

        input[type="submit"] {
            white-space: normal;
            word-wrap: break-word;
            max-width: 100%; /* Prevent the button from stretching beyond its parent container */
            /* Center the content both horizontally and vertically */
         
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
    <br />
   
    <div class="container-fluid1">
        <div class="row">
            <div class="col-md-9">
                <div>
                    <div id="<%# Eval("Blog_id") %>" class="section">
                        <asp:Repeater ID="rptHtmlTags" runat="server">                          
                            <ItemTemplate>
                                <asp:Panel ID="pnlTag" runat="server" Visible='<%# Eval("Tag_name").ToString() == "img" %>'>
                                      <div>
                                          <center>
                                               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath") %>'  AlternateText="Biosafety Cabinet manufacturer by Imset" class="mySlides1" />
                                    
                                          </center>
                                       
                                       </div>
                                    <br />
                                    <br />
                                </asp:Panel>
                                <asp:Panel ID="pnlNonImgTag" runat="server" Visible='<%# Eval("Tag_name").ToString() != "img" %>'>
                                    <<%# Eval("Tag_name") %>><%# Eval("Description") %></<%# Eval("Tag_name") %>>
                                  
                                </asp:Panel>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-md-3 SidebarStyle">
                 <p class="Underlinedecorate">Recent post</p>
                <asp:Repeater ID="MenuSidebar" runat="server">
                    <HeaderTemplate>
                        <ul class="inline-list1">
                    </HeaderTemplate>
                    <ItemTemplate>
                      <%--  <li><a href='<%# Eval("blog_id") %>' onclick="showsection('<%# Eval("blog_id") %>')"><%# Eval("title") %> </a></li--%> 
                          <li> <asp:Button ID="btnCallServer" runat="server" Text='<%# Eval("title") %>'  OnClick="MyServerSideFunction" CommandArgument='<%# Eval("Blog_id") %>' CssClass="button-style"/>
                           
                          </li
                      <br />                     
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <script>
        var currentSectionId = null; // Track the ID of the currently displayed section   
        function showSection(sectionId) {
            debugger
            PageMethods.YourCodeBehindFunction(sectionId, OnSuccess, OnError);
        }
        function OnSuccess(result) {
            alert("Success: " + result);
        }

        function OnError(error) {
            // Handle the error callback if needed
            alert("Error: " + error.get_message());
        }

    </script>
   
   
</asp:Content>
