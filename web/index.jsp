<%@include file="plantilla/header.jsp" %>

 
 <div class="row">
     <div class="col s6 offset-s3 z-depth-3">
          <h2> Inicio de Sesion</h2>
        <form action="control.do" method="post">
            <label>Rut</label>
            <input type="text" name="rut"  value=""/>
            
            <br>
             <label>Clave</label>
            <input type="password" name="clave" />
            <br>
            <button class="btn pulse right" name="boton" type="submit" value="login">Aceptar</button>
            <br><br>
                 <p class="center-align"><a href="registro.jsp">Si no tiene cuenta registrar Aquí</a>
           
        </form>
       <br>
       <p class="red-text"> ${requestScope.msg}</p>
         
         
     </div>
     
     
 </div>
      
   <%@include file="plantilla/footer.jsp" %>