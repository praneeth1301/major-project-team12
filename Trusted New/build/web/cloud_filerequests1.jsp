<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%@page import="novelefficient.Mail"%>
    <%
    String filename = request.getParameter("filename");
    String rtime = request.getParameter("rtime"); 
    String email = request.getParameter("email");
    String skey = request.getParameter("skey");
    int id = Integer.parseInt(request.getParameter("id"));
    
    String cloudkey = null;
    String idmkey = null;
    
    Connection con=Dbconnection.getConnection();
    
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from request where id= "+id+" and attribute1 = '"+rtime+"' ");
    if(rs.next())
    {
    
     PreparedStatement ps=con.prepareStatement("update request set status = 'Verified' where id = "+id+" ");
     ps.executeUpdate();   
     
     Mail m = new Mail();
          String msg ="File Name:"+filename+"\ndecryption key :"+skey;
          m.secretMail(msg,filename,email);
     
     response.sendRedirect("cloud_filerequests.jsp?msg=Verified"); 
    }
    
   /* Statement st1 = con.createStatement();
    ResultSet rs1 = st1.executeQuery("select * from cloudkey where email= '"+email+"'");
    if(rs1.next())
    {
    
    cloudkey = rs1.getString("cloudkey");
    idmkey = rs1.getString("idmkey");
        
    }
    
    Statement st2 = con.createStatement();
    ResultSet rs2 = st2.executeQuery("select * from request where email= '"+email+"' and cloudkey = '"+cloudkey+"' and idmkey = '"+idmkey+"'  ");
    if(rs2.next()){
     PreparedStatement ps=con.prepareStatement("update request set status = 'Verified' where id = "+id+" ");
     ps.executeUpdate();
    response.sendRedirect("cloud_filerequests.jsp?msg=Success");
        
    }
    
    
   
 
    else{
    response.sendRedirect("cloud_filerequests.jsp?msg1=Failed");    
    }
           */
   

    %>