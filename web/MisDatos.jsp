<%@page import="javax.naming.InitialContext"%>
<%@page import="cl.beans.ServicioBeanLocal"%>
<%@include file="plantilla/header.jsp" %>




  <c:if test="${not empty sessionScope.admin}">
    <%@include file="plantilla/menu.jsp" %>
    <div class="row">
        <div class="col s6 offset-s3 z-depth-3">
            <h4 class="center-align">Mis Datos</h4>
            <form action="control.do" method="post">
                <label>Rut</label>
                        <!--Para retornar el dato de sesion debe ser sessionScope-->
                <input type="text" name="rut"  value="${sessionScope.admin.rutUser}"/>
                 <label>Nombre</label>
                <input type="text" name="nombre" readonly="true"  value="${sessionScope.admin.nombreUser}"/>
                  <label>Apellido</label>
                <input type="text" name="apellido" readonly="true"  value="${sessionScope.admin.apellidoUser}"/>
                 <label>${sessionScope.admin.emailUser}</label>
                <input type="text" name="correo"   value=""/>
                 <label>Clave</label>
                <input type="text" name="clave1"   value=""/>
                <label>Confirmar Clave</label>
                <input type="text" name="clave2"   value=""/>

                

                <button class="btn" name="boton" value="editardatos" type="submit">Actualizar</button>
                <br><br>
                <p class="center-align"><a href="index.jsp">volver</a>

            </form>
        </div>

    </div>

</c:if>

<c:if test="${empty sessionScope.admin}">
    No tiene permisos para estar aqui
    <br><a href="index.jsp">Iniciar Sesion</a>
</c:if>
      
   <%@include file="plantilla/footer.jsp" %>

