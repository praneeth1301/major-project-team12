<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%@page import="java.util.Date" %>
<%@page import="novelefficient.Mail"%>
    <%
    String filename = request.getParameter("username");
  
    String email = request.getParameter("email");
    String user = session.getAttribute("user").toString();
             
    String key = null;
    
    try{
  
            
    Connection con=Dbconnection.getConnection();
    
    String sql = "select * from source where username = '"+user+"'";
    Statement st1 = con.createStatement();
    ResultSet rs1 = st1.executeQuery(sql);
    if(rs1.next()){
    
        
    key = rs1.getString("skey");
  
    PreparedStatement ps=con.prepareStatement("update td set skey = '"+key+"',status = 'done' where email = '"+email+"'");

   
     Mail m = new Mail();
          String msg ="User Name:"+email+"\nOTP :"+key;
          m.secretMail(msg,email,email);
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("owner_request.jsp?msg=Success");
    }
    else{
    response.sendRedirect("owner_request.jsp?msg1=Failed");    
    }
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>