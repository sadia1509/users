<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="selise.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>
                <asp:DropDownList ID="listSort" runat="server">
                      <asp:ListItem Text="Choose" value=""></asp:ListItem> 
                    <asp:ListItem Text ="First Name" value="fn"></asp:ListItem> 
                     <asp:ListItem Text ="Last Name" value="ln"></asp:ListItem>              
                       <asp:ListItem Text ="Birth Date" value="bd"></asp:ListItem>  
                </asp:DropDownList>
                <asp:Button ID="btnSort" runat="server" Text="Sort" OnClick="btnSort_Click" />
            </div>

            <div style ="padding: 50px;">
            <asp:HyperLink ID="linkBack" runat="server" href="CreateUsers.aspx">Back</asp:HyperLink> <br /> <br /> <br />
            <asp:Label ID="lblShowUsers" runat="server" Text=""></asp:Label>
            </div>

            <div style="padding: 50px;">
                <asp:ListView ID ="listUsers" runat="server">
                   <ItemTemplate>

                           <div >
                             <table CELLSPACING=50  CELLPADDING=0>
                                 <tr>
                                <td><b>First Name</b></td>
                                <td><b>Last Name</b></td>
                                <td><b>Email</b></td>
                                <td><b>Phone</b></td>
                                <td><b>Birth Date</b></td>
                                <td><b>Gender</b></td>
                                <td><b>City</b></td>
                                </tr>
                                 <tr>
                                     <td> 
                                            <asp:Label runat="server" Text='<%#Eval("firstName")%>'>  </asp:Label>
                                     </td>
                                       <td> 
                                              <asp:Label runat="server" Text='<%#Eval("lastName")%>'>  </asp:Label>
                                       </td>
                                      <td>
                                             <asp:Label runat="server" Text='<%#Eval("email")%>'>  </asp:Label>
                                     </td> 
                                        <td>
                                             <asp:Label runat="server" Text='<%#Eval("phone")%>'>  </asp:Label>
                                     </td> 
                                        <td>
                                             <asp:Label runat="server" Text='<%#Eval("birthdate")%>'>  </asp:Label>
                                     </td> 
                                        <td>
                                             <asp:Label runat="server" Text='<%#Eval("gender")%>'>  </asp:Label>
                                     </td> 
                                        <td>
                                             <asp:Label runat="server" Text='<%#Eval("city").ToString()==""  ? "NaN"  :  Eval("city")   %>'>  </asp:Label>
                                     </td> 
                                 </tr>
                                 
                                 
                             </table>
                         </div>
                   
                  </ItemTemplate> 
               </asp:ListView>
            </div>

        </div>
    </form>
</body>
</html>
