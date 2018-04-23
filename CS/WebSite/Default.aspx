<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to Find a Default ASP.NET Control Placed Inside an ASPxGridView Template on the Client Side</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
    <div>    
        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" 
            ClientInstanceName="grid" DataSourceID="AccessDataSource1" 
            KeyFieldName="CustomerID">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" 
                    VisibleIndex="0">
                    <HeaderTemplate>
                        <asp:TextBox ID="txtbx" runat="server" Height="24px" Width="212px" ></asp:TextBox>
                    </HeaderTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <br />
        <dx:ASPxButton ID="btn" runat="server" AutoPostBack="False" 
            ClientInstanceName="btn" Text="Click Me!">
            <ClientSideEvents Click="function(s,e) {showText();}" />
        </dx:ASPxButton>
        <script type="text/javascript">
              function showText() {
                     var txt = document.getElementById('<%= getClientID("CustomerID", "txtbx")%>');
                     txt.value = "Button Clicked!";
                 }
        </script>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Northwind.mdb" 
            
            SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [Country] FROM [Customers]">
        </asp:AccessDataSource>
      </div>
    </form>
</body>
</html>
