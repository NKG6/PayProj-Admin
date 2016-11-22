<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="adminEmployees.aspx.cs" Inherits="PayProj.adminEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Label ID="lblError" runat="server" CssClass="mylabel"
                Style="position: absolute; top: 59px; left: 13px;" Font-Bold="True"
                ForeColor="Red"></asp:Label>
    <div>
                    <asp:GridView ID="grdMain" runat="server"
                        
                        AutoGenerateColumns="false" DataKeyNames="EmployeeID"  OnRowDeleting="grdMain_RowDeleting"
                        CssClass="table table-hover table-striped grdViewTable">
                        <Columns>
                            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                            <asp:BoundField DataField="Name" HeaderText="Name"              SortExpression="Name"       HeaderStyle-CssClass="hidden-xs"    ItemStyle-CssClass="visible-lg"/>
                            <asp:BoundField DataField="Phone" HeaderText="Phone"            SortExpression="Phone"      HeaderStyle-CssClass="visible-lg"   ItemStyle-CssClass="visible-lg" />
                            <asp:BoundField DataField="Email" HeaderText="Email"            SortExpression="Email"      ItemStyle-CssClass="hidden-xs "     HeaderStyle-CssClass="hidden-xs" />
                            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" ItemStyle-CssClass="hidden-xs"    HeaderStyle-CssClass="hidden-xs" />
                            <asp:BoundField DataField="LevelID" HeaderText="Level"          SortExpression="Level"      ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName"          SortExpression="UserName"   ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs"/>
                        <asp:BoundField DataField="Password" HeaderText="Password"          SortExpression="Password"   ItemStyle-CssClass="hidden-xs"      HeaderStyle-CssClass="hidden-xs" />
                        <asp:CommandField ShowDeleteButton="True" />
                            
                        </Columns>
                        <RowStyle CssClass="rowStyle" />
                        <HeaderStyle CssClass="headerStyle" />
                        <FooterStyle CssClass="footerStyle" />
                        <PagerStyle HorizontalAlign="Center" />
                        
                    </asp:GridView>
                </div>
</asp:Content>
