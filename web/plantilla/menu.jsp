<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">
          <c:if test="${not empty sessionScope.admin}">
              Bienvenido ${sessionScope.admin.nombreUser}
              
          </c:if>
              
              <c:if test="${not empty sessionScope.person}">
              Bienvenido ${sessionScope.person.nombreUser}
              <!-- accedemos al atributo del nombre en la base de datos -->
              
          </c:if>
      </a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
          
          <c:if test="${not empty sessionScope.admin}">
              <li><a href="MisDatos.jsp">Mis Datos</a></li>
               <li> <a href="Categoria.jsp">Modulo Categoria</a></li>
               <li> <a href="Producto.jsp">Modulo Producto</a></li>
                <li> <a href="Catalogo.jsp">Catalogo</a></li>
               <li> <a href="#">Modulo Venta</a></li>
                  <li> <a href="salir.jsp">Cerrar Sesión</a></li>
              
          </c:if>
          
           <c:if test="${not empty sessionScope.person}">
              <li><a href="#">Mis Datos</a></li>
              <li><a href="#">Carrito</a></li>
              <li><a href="#">Mis Compras</a></li>
              <li><a href="#">Productos</a></li>
            
                  <li> <a href="salir.jsp">Cerrar Sesión</a></li>
              
          </c:if>
          
         
         
      </ul>
    </div>
    </nav>