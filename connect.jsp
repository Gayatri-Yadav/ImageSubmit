<%@ page language="java" import="java.sql.*.java.io.*.javax.swing.*,java.util.*"
Error page="error.jsp" %>
<%!
connection con;
%>
<%
try
{
Class.forName("oracle.jdbc.oracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","scott","tiger");
}
catch(SQLException e)
{e.printStackTrace();
System.out.println("--Exception Occured"+e);
}
%>