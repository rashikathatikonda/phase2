<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
       </ul>
       <H1>Change Password </H1>
       <form action="ChangePassword" method="post">
        ${msg}<br>
      <input name="old_pass" type="text" placeholder="Enter Old Password"><br>
      
      <input name="new_pass" type="text" placeholder="Enter new Password"><br>
      
      <input  type="submit" value="Submit">
      </form>
     </BODY>
</HTML>