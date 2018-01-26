<%-- 
    Document   : cerrar
    Created on : 22-01-2018, 16:31:46
    Author     : alumnossur
--%>

<%
   session.invalidate();
   response.sendRedirect("index.jsp");

%>
