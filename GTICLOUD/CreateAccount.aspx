﻿ <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="GTICLOUD.CreateAccount" %>

<%@ Register Src="~/CssControl.ascx" TagPrefix="uc1" TagName="CssControl" %>
<%@ Register Src="~/JsScriptControl.ascx" TagPrefix="uc1" TagName="JsScriptControl" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>GTI CLOUD Management System</title>
    <uc1:CssControl runat="server" ID="CssControl" />
</head>
<body class="login-page-bg-color">
    <uc1:JsScriptControl runat="server" ID="JsScriptControl" />
    <form id="form1" runat="server">
        <div class="Container-fluid ">

            <div>
                <h4 class="center-align white-text">GTI CLOUD MANAGEMENT SYSTEM
                </h4>
            </div>

            <div class="login-card-area">

                <div class="row">
                    <div class="col s12">
                        <div class="card white card-wrap">

                            <div class="row">
                                <div class="input-field col s12">
                                    <asp:TextBox ID="username" runat="server" class="validate"></asp:TextBox>
                                    <label for="username">Name</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Required" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s12">
                                    <asp:TextBox ID="email" runat="server" class="validate"></asp:TextBox>
                                    <label for="email">Email</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                <div class="input-field col s12">
                                    <asp:DropDownList ID="choose" runat="server">
                                        <asp:ListItem disabled Selected="True">Choose your Category</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Technician</asp:ListItem>
                                        <asp:ListItem>Account Manager</asp:ListItem>
                                        <asp:ListItem>Client</asp:ListItem>
                                        <asp:ListItem>Manager</asp:ListItem>
                                        <asp:ListItem>Employee</asp:ListItem>
                                    </asp:DropDownList>

                                </div>


                                <div class="input-field col s12">
                                    <asp:TextBox ID="create_pass" runat="server" class="validate" TextMode="Password"></asp:TextBox>
                                    <label for="create_pass">Create Password</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="create_pass" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-field col s12">
                                    <asp:TextBox ID="confirm_pass" runat="server" class="validate" TextMode="Password"></asp:TextBox>

                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch" ControlToValidate="confirm_pass" ControlToCompare="create_pass" ForeColor="Red" ></asp:CompareValidator>
                                    <label for="confirm_pass">Confrim Password</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required" ControlToValidate="confirm_pass" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                            </div>
                            <asp:Button ID="submit" runat="server" Text="Sign Up" class=" btn " OnClick="submit_Click" />
                            <br />




                        </div>
                    </div>
                </div>


            </div>
        </div>
    </form>
</body>
</html>
