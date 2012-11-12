<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCVenta.ViewModels.CarritoCompra>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Carrito de Compras</h2>

    

    <form id="form1" action="/CarritoCompras/Guardar" method="post"  >

    <table cellspacing="20">
    <tr>
    <td align="left">
     <div>
       <%-- <%: Html.ActionLink("Seguir Comprando", "Guardar", "CarritoCompras")%>--%>
        <input id="btnGuardar" name="btnGuardar" type="submit" value="Añadir otro producto" />
    </div>
    </td>
     <td>
     <div>
         <input id="btnCancelar" name="btnCancelar" type="submit" value="Cancelar" />
       <%-- <%: Html.ActionLink("Cancelar", "Cancelar", "CarritoCompras")%>--%>
    </div>
    </td>
    <td>
    <div>
       
        <input id="btnCompra" name="btnCompra" type="submit" value="Realizar Compra" />
    </div>
    </td>
   
    </tr>
    </table>
   

    <br />
    <br />

  
     <%-- <% using (Html.BeginForm("Guardar", "CarritoCompras", FormMethod.Post))
       {%>
            <%: Html.ValidationSummary(true) %>--%>
    <table width="100%" cellpadding="10">
        <tr>
            <th></th>
            <th>
                DescripcionProducto
            </th>
            <th>
                PrecioProducto
            </th>
            <th>
                CantProducto
            </th>
            <th>
                TotalProducto
            </th>
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            
            <td>
             <img alt="<%: item.DescripcionProducto %>"  src="../../Imagenes/Productos/<%: item.IdProducto%>.png"
                                width="70" height="50" />
            </td>
            
            <td>
               <%: item.DescripcionProducto %>                
            </td>
            <td align="right">
                <input id="hdPrecio" type="hidden" value="<%: item.PrecioProducto %>" />
                <%: String.Format("{0:c}", item.PrecioProducto) %>
            </td>
            <td align="right">
               
            <%--<div class="editor-field-quantity">
                <%: Html.TextBoxFor(model => item.CantProducto)%>
                <%: Html.ValidationMessageFor(model => item.CantProducto)%>
            </div>--%>
                <input id="txtCantProducto" name="txtCantProducto" type="text" value="<%: item.CantProducto %> "  style="width: 30px"  maxlength="4" datatype="numeric" />

            </td>
            <td align="right">
                <input id="hdTotalProducto" type="hidden" value="<%: item.TotalProducto %>" />
                <%: String.Format("{0:c}", item.TotalProducto) %>
            </td>

            <td align="right">
              <%: Html.ActionLink("Remover Producto", "Delete", new { id = item.IdProducto })%>
            </td>
        </tr>
    
    <% } %>

    <tr>
    <td colspan="5" align="right">Total : <span class="lbltotal">200.45</span> </td>
    </tr>

    </table>
    
     
     </form>

         <%-- <% } %>--%>

</asp:Content>

