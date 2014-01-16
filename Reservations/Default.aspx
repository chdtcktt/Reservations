<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Reservations._Default" %>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
    <asp:GridView ID="GridView1" runat="server" CssClass=" table " DataKeyNames="ReservationID" DataSourceID="reservations" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Here!" ShowSelectButton="True" />
            <asp:BoundField DataField="HasArrived" HeaderText="Arrived" SortExpression="HasArrived" />
            <asp:BoundField DataField="StartTime" HeaderText="Arrival Time" SortExpression="StartTime" />
            <asp:BoundField DataField="Fullname" HeaderText="Customer Name" ReadOnly="True" SortExpression="Fullname" />
            <asp:BoundField DataField="TableID" HeaderText="Table #" SortExpression="TableID" />
            <asp:BoundField DataField="Capacity" HeaderText="Table Size" SortExpression="Capacity" />
            <asp:BoundField DataField="EndTime" HeaderText="Ext. Departure" SortExpression="EndTime" />
            <asp:BoundField DataField="Guests" HeaderText="# Guests" SortExpression="Guests" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="reservations" runat="server" ConnectionString="<%$ ConnectionStrings:ReservationsConnectionString %>" SelectCommand="SELECT DR.ReservationID, DR.HasArrived, DR.CustomerID, DR.TableID,  DR.StartTime, DR.EndTime, DR.Guests,  CUST.LastName, CUST.FirstName, DT.Capacity, CUST.LastName + ', ' + CUST.FirstName AS Fullname FROM  DiningTable AS DT INNER JOIN DiningReservation AS DR INNER JOIN  Customers AS CUST   ON DR.CustomerID = CUST.CustomerID  ON DT.TableID = DR.TableID ORDER BY DR.StartTime
"></asp:SqlDataSource>
  
</asp:Content>
