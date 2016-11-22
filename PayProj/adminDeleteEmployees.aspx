<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="adminDeleteEmployees.aspx.cs" Inherits="PayProj.adminDeleteEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" form-group row">

    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
        </div>
<div class="row">
    <h3><span class="label label-warning ">Are you sure to delete this employee?</ span></h3>
      </div>  <br />
    <div class="row">         
    <asp:LinkButton ID="lnkYes" runat="server" 
         class="btn btn-success" 
        onclick="lnkYes_Click">Yes</asp:LinkButton>
     <asp:LinkButton ID="lnkNo" runat="server" 
        class="btn btn-danger" onclick="lnkNo_Click">No</asp:LinkButton>
        </div>
</asp:Content>
