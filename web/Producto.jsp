
<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>


   <c:set var="categorias" scope="page" value="<%= servicio.getCategorias() %>"/>
    <c:set var="productos" scope="page" value="<%= servicio.getProductos() %>"/>
 
 <div class="row">
     <div class="col s6 offset-s3 ">
         <div class="card-panel">
             
             <form action="control.do" method="POST">
                 <label> Nombre </label>
                 <input type="text" name="nombre"/>
                 
                 <label> Precio</label>
                 <input type="text" name="precio"/>
                 
                 <label> Unidad</label>
                 <input type="text" name="unidad"/>
                 
                 <label> Descripcion</label>
                 <textarea name="descripcion" class="materialize-textarea"></textarea>
                 <select name="idcategoria">
                     <c:forEach items="${pageScope.categorias}" var="c">
                          <option value="${c.idCategoria}" var="c">${c.nombreCategoria}</option>
                     </c:forEach>
                    
                     
                 </select>
                 
                 <button name="boton" value="nuevoproducto" class="btn">Crear</button>
                 <br>

             </form>
                   
             ${requestScope.msg}
             <hr>
             <table class="bordered">
                 <thead>
                     <tr><th>ID</th>
                         <th>Nombre</th>
                         <th>Precio</th>
                         <th>Unidad</th>
                         <th>Categoria</th>
                         <th>Foto</th>
                     
                     </tr>
                     
                 </thead>
                 <tbody>
                     <c:forEach items="${pageScope.productos}" var="p">
                         <tr>
                             <td>${p.idProducto}</td> 
                             <td>${p.nombreProducto}</td>
                             <td>${p.precioProducto}</td>
                             <td>${p.unidadesProducto}</td>
                             <td>${p.categoria.nombreCategoria}</td>
                             <td>x</td>
                         </tr>
                     </c:forEach>
                     
                 </tbody>
                 
             </table>
             
             
         </div>
       
       
      
         
         
     </div>
     
     
 </div>
      
   <%@include file="plantilla/footer.jsp" %>
