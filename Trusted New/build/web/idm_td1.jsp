<%@page import="java.util.Random"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Mail"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
  
    String username = request.getParameter("username");  
    String email = request.getParameter("email");
    String skey = request.getParameter("skey");

      
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    
    PreparedStatement ps=con.prepareStatement("update tdrequest set status = 'activated' where email = '"+email+"'");
    ps.executeUpdate();
    
  
        
    
     response.sendRedirect("idm_td.jsp");
    
  
    %>