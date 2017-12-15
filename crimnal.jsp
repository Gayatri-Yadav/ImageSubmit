<%@ include file="connect.jsp"%>
<% String s1=request.getParameter("t1");
String s3=request.getParameter("t3");
File f=new File(s3);
FileInputStream fin=new FileInputStream(f);
PreparedStatement ps=con.prepareStatement("insert into mypic values(?,?)");

ps.setString(1,s1);
ps.setString(2,s2);
ps.setBinaryStream(3,fin,(int)f.length());
Int n=ps.executeUpdate();
If(n==1)
{%>
<HTML>
 <HEAD>
  <TITLE> www.pssoft.com </TITLE>
  </HEAD>

 <BODY bgcolor="#cc33ff" text="#99ffff">
 <center>
 <h1>Record inserted successfully<br><br>
 <a href="index.html">Back</a>
 <a href="toseepic1.jsp">want to see the pictures</a>
 </h1>
 </center>
  
 </BODY>
</HTML>
<%
}
Else
{
%>
<html>
<head>
<title>www.pssof.com</title>
</head>
<body bgcolor="#cc33ff" text="#99ffff">
<center>
<h1>Faild<br><br>
<a href="index.html">Back</a>
</h1>
</center>
</body>
</html>
<%
}
%>