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

     //secretkey generating
       Random s = new Random();
    int otp = s.nextInt(10000 - 5000) +25000 ;
     
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    
    PreparedStatement ps=con.prepareStatement("update source set skey = "+otp+",status = 'activated' where email = '"+email+"'");
    ps.executeUpdate();
    
    Mail m = new Mail();
          String msg ="User Name:"+username+"\nOTP :"+otp;
          m.secretMail(msg,email,email);
      
        
    
     response.sendRedirect("idm_owner.jsp");
    
  
    %>