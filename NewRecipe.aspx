<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="ZZStyle.css" />
    <title>NewRecipe</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Recipe_Name], [Submitted_By], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Prperation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Prperation, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Prperation] = @Prperation, [Notes] = @Notes WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Prperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Prperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
        <div id="otherMain">
           <strong><span class="header">Wicked Easy Recipes</span></strong>
            <h4>Using 5 Ingedients or Less!</h4>
            <a href="Default.aspx" title="Main">Home</a> | 
        <a href="NewRecipe.aspx" title="New Recipe">New Recipe</a> | 
        <a href="AboutUs.aspx" title="About Us">About Us</a> | 
        <a href="ContactUs.aspx" title="Contact">Contact</a><em><span class="footer"><br />
            <br />
            <asp:DetailsView 
                ID="DetailsView1" 
                runat="server" 
                AutoGenerateRows="False" 
                DataKeyNames="Id" 
                DataSourceID="SqlDataSource1" 
                DefaultMode="Insert" 
                HeaderText="Create a recipe."
                CssClass="cssDetailsview"
                HeaderStyle-CssClass="header"
                FieldHeaderStyle-CssClass="fieldHeader"
                CommandRowStyle-CssClass="command" Width="280px"
                
                >
                <Fields>
                    <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
                    <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" />
                    <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient #1" SortExpression="Ingredient1" />
                    <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient #2" SortExpression="Ingredient2" />
                    <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient #3" SortExpression="Ingredient3" />
                    <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient #4" SortExpression="Ingredient4" />
                    <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient #5" SortExpression="Ingredient5" />
                    <asp:BoundField DataField="Prperation" HeaderText="Prperation" SortExpression="Prperation" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
            © Created by Zhongli Zhao</span></em>
        </div>
    </form>
</body>
</html>
