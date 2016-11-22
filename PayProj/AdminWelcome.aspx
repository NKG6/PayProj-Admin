<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminWelcome.aspx.cs" Inherits="PayProj.AdminWelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EPMS</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">EPMS</a>
                    </div>
                    <div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#">Employees <span class="sr-only">(current)</span></a></li>
                                <li><a href="#">Add New Employee</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </div>


                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
        </div>


        <div class="container">
            <div class="container"></div>
            <asp:Label ID="lblError" runat="server" CssClass="mylabel"
                Style="position: absolute; top: 59px; left: 13px;" Font-Bold="True"
                ForeColor="Red"></asp:Label>

        </div>
        <div>
            <section class="container-fluid" id="employees">

                <%--<asp:Label ID="lblPageTitle" runat="server" Text="Employees:"
                            Style="position: absolute; top: 118px; left: 13px;" CssClass="mylabel"
                            Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>--%>
              <%--  <asp:GridView ID="gridEmployees" runat="server"
                    Style="position: absolute; top: 140px; left: 10px;" CellPadding="4"
                    Font-Names="Tahoma" Font-Size="12px" ForeColor="#333333" GridLines="None"
                    AutoGenerateColumns="False" OnRowDeleting="gridEmployees_RowDeleting">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" />
                        <asp:BoundField DataField="LevelID" HeaderText="Level" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>--%>


            </section>
                <div>
                    <asp:GridView ID="grdMain" runat="server"
                        
                        AutoGenerateColumns="false" DataKeyNames="EmployeeID"  OnRowDeleting="grdMain_RowDeleting"
                        CssClass="table table-hover table-striped grdViewTable">
                        <Columns>
                            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"  HeaderStyle-CssClass="hidden-md" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-CssClass="hidden-xs hidden-md" HeaderStyle-CssClass="hidden-xs" />
                            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />
                            <asp:BoundField DataField="LevelID" HeaderText="Level" SortExpression="Level" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs"/>
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />
                        <asp:CommandField ShowDeleteButton="True" />
                            
                        </Columns>
                        <RowStyle CssClass="rowStyle" />
                        <HeaderStyle CssClass="headerStyle" />
                        <FooterStyle CssClass="footerStyle" />
                        <PagerStyle HorizontalAlign="Center" />
                        
                    </asp:GridView>

                </div>


        </div>
    </form>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
