<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="AdminPage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    #form1{
    margin-left: 500px;
    margin-top: 100px;
    padding: 16px;
        }
    </style>
    <form id="form1" runat="server">
        <div><br /> <br /> 
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Pasword"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </div>
    </form>

    </asp:Content> 