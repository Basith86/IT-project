<%@ Page Language="C#" AutoEventWireup="true" CodeFile="survey.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="survey" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br /> <br /> 

            <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <br /> <br />

            <asp:Label ID="Label3" runat="server" Text="Institution :"></asp:Label>
            <asp:Label ID="Label8" runat="server"></asp:Label>
            <br /> <br /> 
            
            <asp:Label ID="Label4" runat="server" Text="Branch :"></asp:Label>
            <asp:Label ID="Label9" runat="server"></asp:Label>
            <br /> <br /> 

            <asp:Label ID="Label5" runat="server" Text="Graduating Year :"></asp:Label>
            <asp:Label ID="Label10" runat="server"></asp:Label>
            <br /> <br />
            
            <asp:Label ID="Label11" runat="server" Text="How interested are you in attending Reunion? "></asp:Label>
            <br /> 
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" CellPadding="0" CellSpacing="15" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
            <br /> <br />

            <asp:Label ID="Label12" runat="server" Text="I am proud to be an alumnus of school because it provides me with job training, allowed me to meet new people and looks good on my resume "></asp:Label>
            <br /> 
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" CellPadding="0" CellSpacing="15" RepeatDirection="Horizontal">
                <asp:ListItem>Strongly Disagree</asp:ListItem>
                <asp:ListItem>Disagree</asp:ListItem>
                <asp:ListItem>Agree</asp:ListItem>
                <asp:ListItem>Strongly Agree</asp:ListItem>
            </asp:RadioButtonList>
            <br /> <br />

            <asp:Label ID="Label13" runat="server" Text="How far will you be willing to attend an event sponsored by the school"></asp:Label>
            <br /> 
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" CellPadding="0" CellSpacing="10" RepeatDirection="Horizontal">
                <asp:ListItem>Less than 50 Miles</asp:ListItem>
                <asp:ListItem>50-100 Miles</asp:ListItem>
                <asp:ListItem>100-200 Miles</asp:ListItem>
                <asp:ListItem>More than 200 Miles</asp:ListItem>
            </asp:RadioButtonList>
                        <br /> <br />

            <asp:Label ID="Label14" runat="server" Text="Is it a good idea for school to stop printing the Alumni Magazine"></asp:Label>
            <br /> 
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" CellPadding="0" CellSpacing="15" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br /> <br /> 
            
            <asp:Label ID="Label15" runat="server" Text="Would you refer Manipal University to friends and relatives"></asp:Label>
            <br /> 
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" CellPadding="0" CellSpacing="15" RepeatDirection="Horizontal">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            
            <br /> <br /> 
            
        <asp:Label ID="Label16" runat="server" Text="How Would you rate Manipal University"></asp:Label>
            <br /> 
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="0" CellSpacing="15">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
        </asp:RadioButtonList>
            
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
           </div>     
    </form>

    </asp:Content>