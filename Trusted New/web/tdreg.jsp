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
if(request.getParameter("mg")!=null){%>
    
   <script>alert('Login Sucessfully..!')</script>
}  

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('Owner Registration Failed..!')</script>
}
<%
}
%>
<%
if(request.getParameter("m3")!=null){%>
    
   <script>alert('username already exists')</script>
}  

<%}
if(request.getParameter("")!=null){%>

 <script>alert('Owner Registration Failed..!')</script>
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
     <li><a href="index.html">HOME</a></li>
      <li><a href="owner.jsp"> Source Device</a></li>
      <li><a class="active" href="td.jsp">Target Device</a></li>
      <li><a href="idm.jsp">Group Manager</a></li>
        <li><a href="ds.jsp">Data Storage</a></li>
    </ul>
  </div>
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p>Nowadays, broadband wireless networks and 5G have improvements in the quality and dependability of network services for high-speed mobile vehicles. Within an open communication environment on the Internet of vehicles named IoV, personal details will be revealed on the Wi-Fi network. Considering information security and privacy, this research concentrates on how to protect secure information transmission in real time through IoV, and also wants to avoid illegal vehicles, passers-by or drivers from joining connection and planting or altering significant data. This research provides a multilevel security infrastructure with M-tree based elliptic curve digital signature algorithm (ECDSA) for securing data transmission in both IoV and cloud environments. While transmitting, this study provides several flexible and scalable schemes to manage security issues, which dynamically adjust the framework depending on the rapidly changing IoV topology and speed up the time to synchronise the reconstruction of the system key, </p>
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
       
     <center>   
       <p align="justify">
    <p><font color="black" size="5"> Target Device Registration </font></p><br/>
    
    <form name="myform" autocomplete="off" action="tdregact.jsp" method="post" onsubmit="return validateform()">
    <table align="center" width="321">
    <tr>
    <td width="191" height="43"><font color="black">User Name </td>
    <td width="218"><input autocomplete="off" name="username" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Password </td>
    <td width="218"><input type="password" name="password" required="" placeholder="Password" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" autocomplete="off" required="" placeholder="Email ID"/></td>
    </tr>

        
    <tr>
    <td height="43"><font color="black">Select Gender</td>
    <td><select name="gender" style="width:170px;" required="">
    <option>--Select--</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td>
    </tr>
     
    
        
    <tr>
    <td height="65"><font color="black">Address</td>
    <td><textarea name="address" rows="3" cols="20" required=""></textarea></td>
    </tr> 
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" id="txtphoneno" required="" placeholder="Mobile Number"/></td>
    </tr>  

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="REGISTER" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>     
        
     </center>   
        
        
        
    </div>
    
    
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