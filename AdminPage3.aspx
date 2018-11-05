<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage3.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="AdminPage3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />
    <br /> 
    <b>Reunion</b>: How interested are you in attending Reunion? <br />
    <b>Proud</b>: I am proud to be an alumnus of school because it provides me with job training, allowed me to meet new people and looks good on my resume <br />
    <b>Event</b>: How far will you be willing to attend an event sponsored by the school?<br />
    <b>Magazine</b>: Is it a good idea for school to stop printing the Alumni Magazine?<br />
    <b>Refer</b>: Would you refer Manipal University to friends and relatives? <br />
    <b>Rate</b>:How Would you rate Manipal University? <br />
    <br />
    <br />
    

    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gyear" HeaderText="Graduation Year" SortExpression="Gyear">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Institute" HeaderText="Institution" SortExpression="Institute">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Reunion" HeaderText="Reunion" SortExpression="Reunion">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Proud" HeaderText="Proud" SortExpression="Proud">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Magazine" HeaderText="Magazine" SortExpression="Magazine">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Refer" HeaderText="Refer" SortExpression="Refer" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>" SelectCommand="select Student.Name,Student.Gyear,Student.Institute, Survey.Reunion, Survey.Proud, Survey.Event, Survey.Magazine, Survey.Refer, Survey.Rate  from Student,Survey where Student.Email=Survey.Email
"></asp:SqlDataSource>
        </div>  
        <br />
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
    </form>

        </asp:Content> 