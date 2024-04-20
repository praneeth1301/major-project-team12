<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("uname");
    String file = request.getParameter("file"); 
    String email = session.getAttribute("email").toString();
    
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into images values(?,?,?)");

    ps.setString(1,username);
    ps.setString(2,email);
    ps.setString(3,file);
  
  
   
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("owner_upload.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("owner_upload2.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>