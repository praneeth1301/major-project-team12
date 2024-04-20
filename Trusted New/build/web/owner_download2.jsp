<%@page import="novelefficient.decryption"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%@page import="novelefficient.Mail"%>
<%
String fname = null;
    String fkey = null;
    String file = null;
String filename = request.getParameter("fname");
String cipher = request.getParameter("cipher");
String skey = request.getParameter("key");
Connection con=Dbconnection.getConnection();
 Statement st5 = con.createStatement();
            ResultSet rt5 = st5.executeQuery("select * from upload where filename='" + filename + "' ");
            if (rt5.next()) {
                fname = rt5.getString("filename");
                fkey = rt5.getString("skey");
                file = rt5.getString("file");
               
            } 
   String sql = "select * from request where skey = '"+skey+"' and filename = '"+filename+"'";
   Statement st = con.createStatement();
   ResultSet rs = st.executeQuery(sql);
   if(rs.next()){
   
         response.setHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
           out.write(file);
           
   }
   else{
       response.sendRedirect("owner_download.jsp?msgg=Failed"); 
   }

%>