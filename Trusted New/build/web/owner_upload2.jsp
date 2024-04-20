<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Secure Mobile Data Transfers</title>
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
if(request.getParameter("msg1")!=null){%>
    
   <script>alert('File Uploaded Sucessfully..!')</script>
}  

<%}
if(request.getParameter("msgg")!=null){%>

 <script>alert('Error in File Upload..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
    <h1>Secure Mobile Data Transfers</h1>
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
    <ul>
      <li><a href="ownerhome.jsp">HOME</a></li>
      <li><a class="active" href="owner_upload.jsp">Upload</a></li>
      <li><a href="owner_view.jsp">View Files</a></li>
      <li><a href="owner_request.jsp">View Request</a></li>      
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
        <%
    String user = session.getAttribute("user").toString();
    %>
     <center><p><font size="5" color="black">Upload Image </font></p><br/></center>
     
    <form action="imgact.jsp"  method="post"  >
    <center><table width="371" border="0" >

    <tr><td><font color="black"> User :</td>
        <td><input type="text" value="<%=user%>" readonly name="uname" required="" /></td></tr>
    
    <tr><td><font color="black"> Select File :</td>
    <td><input type="file" name="file" required="" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Upload" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>    
        
        
            
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