<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%@page import="novelefficient.Mail"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Secure Mobile Data Transfer</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script src="js/cufon-yui.js" type="text/javascript" charset="utf-8"></script>
<script src="js/Chaparral_Pro.font.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
</head>
    <%
if(request.getParameter("msg")!=null){%>
    
   <script>alert('Request Sent Sucessfully..!')</script>
}  

<%}
if(request.getParameter("msgg")!=null){%>

 <script>alert('Failed..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
    <h1>Secure Mobile Data Transfer</h1>
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
   <ul>
      <li><a  href="tdhome.jsp">HOME</a></li>
      <li><a href="tdbackup.jsp">Send Request</a></li>
      <li><a class="active" href="td_view.jsp">View Data</a></li>
      <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p> Nowadays, broadband wireless networks and 5G have improvements in the quality and dependability of network services for high-speed mobile vehicles. Within an open communication environment on the Internet of vehicles named IoV, personal details will be revealed on the Wi-Fi network. Considering information security and privacy, this research concentrates on how to protect secure information transmission in real time through IoV, and also wants to avoid illegal vehicles, passers-by or drivers from joining connection and planting or altering significant data. This research provides a multilevel security infrastructure with M-tree based elliptic curve digital signature algorithm (ECDSA) for securing data transmission in both IoV and cloud environments. While transmitting, this study provides several flexible and scalable schemes to manage security issues, which dynamically adjust the framework depending on the rapidly changing IoV topology and speed up the time to synchronise the reconstruction of the system key, </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/1.png" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
           
          </div>
          <div class="image"> <a href="#"><img src="css/images/2.jpg" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       
        
        <p><center><font size="5" color="black">View Data</font></center></p><br/>
    <style>
        th{
            color: #50aac3;
        }
         tr{
            color: black;
        }
        
        td{
            text-align: center;
        }
    </style>
     
    
    <% 
String user = session.getAttribute("email").toString();
String username = session.getAttribute("user").toString();
String m = null;
String skey = null;
try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        
      Statement st = con.createStatement();
        Statement st11 = con.createStatement();
       ResultSet r111 = st11.executeQuery("select * from tdrequest where  status = 'activated'  and username='"+username+"'");
    if(r111.next())
    {
        ResultSet r1 = st.executeQuery("select * from td where email= '"+user+"' ");
    if(r1.next())
    {
        skey = r1.getString("skey");
        
    }  
      
     PreparedStatement pst1=con.prepareStatement("select * from source where skey = '"+skey+"' ");
        ResultSet rs1=pst1.executeQuery();
    
    if(rs1.next()){
        
        m = rs1.getString("email");
    }
    
    
    
        PreparedStatement pst=con.prepareStatement("select * from upload where email = '"+m+"' and stat = 'dele'");
        ResultSet rs=pst.executeQuery();
        
    
    
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
            
        <th>Source</th>
        <th>Bank</th>
        <th>CVV</th>
        <th>AC NO</th>
        <th>File</th>
       
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
              
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("bank")%></td>
                <td><%=rs.getString("cvv")%></td>
                <td><%=rs.getString("card")%></td>
                <td><textarea><%=rs.getString("file")%></textarea></td>
               
                 
      
         
        </tr>
      <%  }
        
        %> </table>

<% }
    
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
        <br><br><br>
         <hr>    
        
            
    </div>
    <br>
    
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="rf"></a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<script type="text/javascript">pageLoaded();</script>
<!-- END PAGE SOURCE -->
</body>
</html>