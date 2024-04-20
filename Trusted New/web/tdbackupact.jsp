<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String skey = request.getParameter("skey"); 
    String email = request.getParameter("email");
    String status = null;
    
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    
     Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from source where skey= '"+skey+"' ");
    if(rs.next())
    {
        
        
     //PreparedStatement ps=con.prepareStatement("update tdrequest set status = 'pending' where email = "+email+" and skey = '"+skey+"' ");
     //ps.executeUpdate();  
     
     PreparedStatement ps=con.prepareStatement("insert into tdrequest values(?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,email);
    ps.setString(3,skey);
    ps.setString(4,"pending");
    ps.executeUpdate(); 
     
     
     
     
        
        response.sendRedirect("tdbackup.jsp?m1=sent");    
        
    }
    
    
    
    
    
    
    else{
    response.sendRedirect("tdbackup.jsp?msg1=Failed");    
    }
    
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>