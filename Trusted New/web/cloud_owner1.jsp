<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
  
        
    String email = request.getParameter("email");

     //secretkey generating
    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
    keyGen.init(128);
    SecretKey secretKey = keyGen.generateKey();
    System.out.println("secret key:" + secretKey);
    //converting secretkey to String
     byte[] be = secretKey.getEncoded();//encoding secretkey
     String skey = Base64.encode(be);
     System.out.println("converted secretkey to string:" + skey);
     
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from cloudkey where email= '"+email+"' ");
    if(rs.next())
    {
     
    response.sendRedirect("cloud_owner.jsp?msg2=fail");    
        
    }
    
    try{
     
        
    
    PreparedStatement ps=con.prepareStatement("update owner set status = 'Activated',skey = '"+skey+"' where email = '"+email+"' and cloud = 'Cloud'");

 
    PreparedStatement ps1=con.prepareStatement("insert into cloudkey values(?,?,?)");

    ps1.setString(1,email);
    ps1.setString(2,skey);
    ps1.setString(3,"Pending");
    ps1.executeUpdate();
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("cloud_owner.jsp?msg=Success");
    }
    else{
    response.sendRedirect("cloud_owner.jsp?msg1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>