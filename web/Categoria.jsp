<%@page import="javax.naming.InitialContext"%>
<%@page import="cl.beans.ServicioBeanLocal"%>
<%@include file="plantilla/header.jsp" %>

<%@include file="plantilla/menu.jsp" %>


   <c:set var="categorias" scope="page" value="<%= servicio.getCategorias() %>"/>
 
 <div class="row">
     <div class="col s6 offset-s3 ">
         <div class="card-panel">
             
             <form action="control.do" method="POST">
                 <label> Nombre Categorias </label>
                 <input type="text" name="nombre"/>
                 <button name="boton" value="nuevacategoria" class="btn">Crear</button>
                 <br>

             </form>
                   
             ${requestScope.msg}
             <hr>
             <table class="bordered">
                 <thead>
                     <tr><th>ID</th> <th>Nombre</th></tr>
                     
                 </thead>
                 <tbody>
                     <c:forEach items="${pageScope.categorias}" var="c">
                         <tr>
                             <td>${c.idCategoria}</td> <td>${c.nombreCategoria}</td>
                         </tr>
                     </c:forEach>
                     
                 </tbody>
                 
             </table>
             
             
         </div>
       
       
      
         
         
     </div>
     
     
 </div>
      
   <%@include file="plantilla/footer.jsp" %>
