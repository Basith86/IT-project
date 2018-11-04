<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="organisation.aspx.cs" Inherits="organisation" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
             Welcome <asp:Label ID="TextBox4" runat="server"></asp:Label> <br /> <br /> 
        <div>
            <asp:Label ID="Label1" runat="server" Text="Organisation:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid Organisation name" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
        
                        <br /> <br />
            <asp:Label ID="Label2" runat="server" Text="Designation:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid Designation" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
     


            <br /> <br />
            <asp:Label ID="Label3" runat="server" Text="Mobile:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter valid Mobile" ValidationExpression="^((\+)?(\d{2}[-]))?(\d{10}){1}?$"></asp:RegularExpressionValidator>
     


            <br />
            <br />
            <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Submit" />
            <br />

            </div>
    </form>
</asp:Content>