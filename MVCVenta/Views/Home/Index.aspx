<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCVenta.ViewModels.ProductoList>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Catálogo de Productos</h2>

      

    <table>
      <%--  <tr>
             <th>
                ID
            </th>
            <th>
                Línea
            </th>
            <th>
                Descripcion
            </th>
            <th>
                Precio
            </th>
            <th>
               Especificacion
            </th>
            <th>
                Imagen
            </th>
        </tr>--%>
        
        
    <% var intCont=1; %>

    <tr>
        <% foreach (var item in Model)
           {%>
        <td>
            <table border="0">
                <tr>
                    <td align="center">
                        <img alt="<%: item.Descripcion%>" src="../../Imagenes/Productos/<%: item.ID%>.png" width="150" height="200" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <%: item.Descripcion%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <%: String.Format("{0:c}", item.Precio) %>
                        <br />
                       <a href="#"> Comprar </a>
                    </td>
                </tr>
            </table>
        </td>
        <% if (intCont % 4 == 0)
           {%>
    </tr>
        <tr>
            <%}%>
            <% intCont++; %>
            <% } %>

    </tr>
    </table>




  <%--  <h2><%: ViewData["Message"] %></h2>
    <p>
        To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
    </p>--%>
</asp:Content>
