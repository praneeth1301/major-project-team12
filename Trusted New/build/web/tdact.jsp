<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%@page import="novelefficient.Mail"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String skey = request.getParameter("skey");
    try{
       
    Connection con=Dbconnection.getConnection();
    
    
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from td where email= '"+username+"' and password='"+password+"' and skey = '"+skey+"'");
    if(rs.next())
    {

   
    String user = rs.getString("username");
    session.setAttribute("user",user);
    String email = rs.getString("email");
    session.setAttribute("email",email);
    
    
                   
    response.sendRedirect("tdhome.jsp");
    }
    else 
    {
    response.sendRedirect("td.jsp?msg1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>