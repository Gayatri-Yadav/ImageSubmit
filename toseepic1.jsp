<%@ include.file="connect.jsp"%>
<HTML>
<head>
<title>www.pssoft.com</title>
</head>
 <BODY bgcolor="#FFCCFF" text="#99666" alink="white" vlink="#FFFF00">
 <center>
 <h1>Picture Details</h1><hr>
 <%!String s1=" ",s3=" ";
 byte b[];
 Int i=0;
 FileOutputStream fis=null;
 %>
/* <h3 align="right"><a href="logout1.jsp">Logout</a> &nbsp;&nbsp;|&nbsp;&nbsp;<a href="gss.html">About us</a> &nbsp;&nbsp;|&nbsp;&nbsp<a href="adminlogin.jsp">Back</a></h3>*/
 <table border="1" style="text-align:center">
 <tr style="background:#66CCFF">
 <th>empno</th><th>Image</th></tr>
 <%Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("Select* from myemp");%>
 <%
 While(rs.Next())
 {
 i++;
 
 s2=rs.getString("name");
 s3=rs.getString("image")
 fis=new FileOutputStream("c:/Tomcat6/webapps/mypic/img/img1"+i+".jpg");
 fis.write(b);
 s3="img/img1"+i+".jpg";
 %>
 <tr>
 <td></td><td></td>
 <td><img src=" " height="80" width="70"/><%=s3></td>
 </tr>
 <%} %>

</table>
</center>  
 </BODY>
</HTML>
