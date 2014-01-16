<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Reservations.Table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="Customers">
        <Columns>
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip"></asp:BoundField>
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="Customers" ConnectionString='<%$ ConnectionStrings:ReservationsConnectionString %>' SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
</asp:Content>

