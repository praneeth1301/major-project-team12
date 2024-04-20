<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%
    String email = request.getParameter("email");
    String bank = request.getParameter("bank");
    
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    PreparedStatement ps=con.prepareStatement("update  upload set stat = 'dele' where email = '"+email+"' and bank = '"+bank+"'");
    ps.executeUpdate();
   
    
    
    
   
   
    response.sendRedirect("owner_view.jsp?m1=success");
    
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>