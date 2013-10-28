<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="ZZStyle.css" />
    <title>Recipe Home Page</title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Recipe_Name], [Submitted_By], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Prperation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Prperation, @Notes)" UpdateCommand="UPDATE [Table] SET [Recipe_Name] = @Recipe_Name, [Submitted_By] = @Submitted_By, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Prperation] = @Prperation, [Notes] = @Notes WHERE [Id] = @Id">
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
        <div id="defaultMain">
           <strong><span class="header">Wicked Easy Recipes</span></strong>
            <h4>Using 5 Ingedients or Less!</h4>
            
            <a href="Default.aspx" title="Main">Home</a> | 
        <a href="NewRecipe.aspx" title="New Recipe">New Recipe</a> | 
        <a href="AboutUs.aspx" title="About Us">About Us</a> | 
        <a href="ContactUs.aspx" title="Contact">Contact</a><br />
            <br />
            <img src="./img.jpg" alt="Wicked Easy" width="230"/><br />
            &nbsp;<asp:GridView ID="GridView1" 
                runat="server" 
                AllowPaging="True" 
                AutoGenerateColumns="False"
                PageSize="5" 
                DataKeyNames="Id" 
                DataSourceID="SqlDataSource1"
                cssclass="cssGridview"
                PagerStyle-CssClass="pgr"
                
                >
                <Columns>
                    <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" SortExpression="Recipe_Name" />
                    <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Recipe.aspx?Id={0}" HeaderText="Edit" Text="Select" />
                </Columns>
            </asp:GridView>
            <br />
            <br />

            <em><span class="footer">© Created by Zhongli Zhao</span><br />
            </em>
        </div>
    </form>
</body>
</html>
