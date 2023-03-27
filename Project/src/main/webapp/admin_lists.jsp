<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "airline";
String userid = "root";
String password = "Deepthi@02";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE
<HTML>
       <HEAD>
       <TITLE>admin </TITLE>
       </HEAD>
       <BODY BGCOLOR="cyan">
       <h1>Admin Page</h1>
        <ul>
       <a  href="admin_home.jsp">
       <li>Home</li></a>
       <a  href="admin_lists.jsp">
       <li>Lists</li></a>
       <a  href="change_password.jsp">
       <li>Change Password</li></a>
       <a  href="Login.jsp">
       <li>Logout</li></a>
       </ul>
       <H1>List of Airlines </H1>
      <TABLE BORDER="1">
      <TR>
      <TH>Name</TH>
      </TR>
     <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from flights";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Name") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
     </TABLE>
     <div style="position: relative;
    left: 33pc;
    width: 59%;
    top: -27.7pc;">
      <H1>List of Source and Destination </H1>
      <TABLE BORDER="1">
      <TR>
      <TH>Source</TH>
      <TH>Destination</TH>
      </TR>
     <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from flights";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Source") %></td>
<td><%=resultSet.getString("Destination") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
     </TABLE>
</div>     </BODY>
</HTML>