<%@ Page Title="" Language="C#" MasterPageFile="~/adminMasterPage.Master" AutoEventWireup="true" CodeBehind="adminAddNewEmployees.aspx.cs" Inherits="PayProj.adminAddNewEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <section>
        <asp:Label ID="lblError" runat="server" CssClass="mylabel"
                Style="position: absolute; top: 59px; left: 13px;" Font-Bold="True"
                ForeColor="Red"></asp:Label>
        <div>
            <div class="form-group row">
                <div class="input-group ">
                    <asp:Label ID="lblEmpID" runat="server" Text=""></asp:Label>
                    <asp:Label runat="server" ID="lblEmployeeID" />
                    
                </div>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon" id="lblName" style="width:100px">Name</span>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control " Width="265px" placeholder="Name">
                    </asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtName" SetFocusOnError="True">*Please Enter Employee Name.</asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon" id="lblPhone" style="width:100px">Phone</span>
                    <asp:TextBox runat="server" ID="txtPhone" class="form-control" Width="265px" placeholder="Phone" />
                </div>
                <asp:RequiredFieldValidator ID="PhoneValidator" runat="server"
                    ControlToValidate="txtPhone" SetFocusOnError="True">*Please Enter Employee Phone Number.</asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon" id="lblEmail" style="width:100px">Email</span>
                    <asp:TextBox runat="server" ID="txtEmail" class="form-control" Width="265px" placeholder="Email" />
                </div>
                <asp:RequiredFieldValidator ID="EmailValidator" runat="server"
                    ControlToValidate="txtEmail" SetFocusOnError="True">*Please Enter Employee Email.</asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon" id="lblDesignation" style="width:100px">Designation</span>
                    <asp:TextBox runat="server" ID="txtDesignation" class="form-control" Width="265px" placeholder="Designation" />
                </div>
                <asp:RequiredFieldValidator ID="DesignationValidator" runat="server"
                    ControlToValidate="txtDesignation" SetFocusOnError="True">*Please Enter Employee Designation.</asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon" id="lblUserName" style="width:100px">UserName</span>
                    <asp:TextBox runat="server" ID="txtUsername" class="form-control" Width="265px" placeholder="Username" />
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtUsername" SetFocusOnError="True">*Please Enter User Name.</asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon " id="lblPassword" style="width:100px">Password</span>
                    <asp:TextBox runat="server" ID="txtPassword" class="form-control " Width="265px" placeholder="Password" />
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="txtPassword" SetFocusOnError="True">*Please Enter Password.</asp:RequiredFieldValidator>
            </div>
            <div class="form-group row">
                <div class="input-group ">
                    <span class="input-group-addon" style="width:100px" >Level</span>
                    <%-- <label for="lblLevel" class="col-lg-2 control-label">Level</label>--%>
                    
                        <asp:DropDownList ID="dropLevel" runat="server" class="form-control" Width="265px">
                        </asp:DropDownList>
                    
                </div>
            </div>
            <div class="row">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" type="button" class="btn btn-success" Text="Submit" />
            </div>
            
        </div>
    </section>
</asp:Content>
