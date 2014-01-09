<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Reservations._Default" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ReservationID" DataSourceID="Reservations" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" BorderColor="Black" />
        <Columns>
            <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" InsertVisible="False" ReadOnly="True" SortExpression="ReservationID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="TableID" HeaderText="TableID" SortExpression="TableID" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
            <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
            <asp:BoundField DataField="Guests" HeaderText="Guests" SortExpression="Guests" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
            <asp:BoundField DataField="Fullname" HeaderText="Fullname" ReadOnly="True" SortExpression="Fullname" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="Reservations" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationsConnectionString %>" SelectCommand=" SELECT    DR.ReservationID, DR.CustomerID, DR.TableID,  DR.StartTime, DR.EndTime, DR.Guests,  CUST.LastName, CUST.FirstName, DT.Capacity,    CUST.LastName + ', ' + CUST.FirstName AS Fullname FROM   DiningTable AS DT INNER JOIN     DiningReservation AS DR INNER JOIN       Customers AS CUST    ON DR.CustomerID = CUST.CustomerID   ON DT.TableID = DR.TableID ORDER BY   DR.StartTime"></asp:SqlDataSource>
</asp:Content>
