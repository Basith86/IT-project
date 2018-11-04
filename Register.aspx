<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Register.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="First" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    #form1{
    margin-left: 500px;
    margin-top: 100px;
    padding: 16px;
        }
    </style>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
        
        <br /> <br /> 
        <asp:Label ID="Label3" runat="server" Text="Graduating year"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
        </asp:DropDownList>
            <asp:RequiredFieldValidator InitialValue="select" ID="Req_ID" runat="server" ControlToValidate="DropDownList1" Text="Please select a year" ErrorMessage="ErrorMessage"></asp:RequiredFieldValidator>
        <br /> <br /> 


        <asp:Label ID="Label4" runat="server" Text="Institution"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem>MIT</asp:ListItem>
            <asp:ListItem>SOAHS</asp:ListItem>
            <asp:ListItem>SOLS</asp:ListItem>
            <asp:ListItem>MCOPS</asp:ListItem>
            <asp:ListItem>KMC</asp:ListItem>
            <asp:ListItem>MCON</asp:ListItem>
            <asp:ListItem>MCOD</asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator InitialValue="select" ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" Text="Please select a institution" ErrorMessage="ErrorMessage"></asp:RequiredFieldValidator>
       

        <p>
            <asp:Label ID="Label5" runat="server" Text="Branch"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Branch" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                  
        </p>
        <asp:Label ID="Label6" runat="server" Text="E mail"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <p>
            <asp:Label ID="Label7" runat="server" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="The password must be between 4-15 caharcaters with letter as first character ,numbers and the underscore may be used" ValidationExpression="^[a-zA-Z]\w{3,14}$"></asp:RegularExpressionValidator>

        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage=" * Field Required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="TextBox4" ControlToValidate="TextBox5"></asp:CompareValidator>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
        </p>
    </form>
</asp:Content> 

