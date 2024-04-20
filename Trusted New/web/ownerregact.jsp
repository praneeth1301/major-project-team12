<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String cloud = request.getParameter("cloud");
    String attributes = request.getParameter("attributes");
    String gender = request.getParameter("gender"); 
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into source values(?,?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
  
    ps.setString(4,gender);
    ps.setString(5,address);
    ps.setString(6,mobile);
   // ps.setString(7,cloud);
    //ps.setString(8,attributes);
    ps.setString(7,"Pending");
    ps.setString(8,"Pending");
   
   
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("owner.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("ownerreg.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>