<%--
  Created by IntelliJ IDEA.
  User: Nata
  Date: 14.08.2019
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<p><b> Please enter data </b></p>
<form action='/statistic' method='POST'>
    <input name="name" placeholder="name..." type="text" required
           height="100%" size="40" class="class1"/> <br>
    <br> <input name="last name" placeholder="last name..." type="text"
                required height="100%" size="40" class="class1"/> <br><br>
    <input name="age" placeholder="age..." type="text" required
           height="100%" size="40" class="class1"/> <br>
    <br>
    <p><b>Best programming language </b></p>
    <p><input name="language" type="radio" value="Fortran"> Fortran</p>
    <p><input name="language" type="radio" value="Python"> Python</p>
    <p><input name="language" type="radio" value="Java" checked> Java</p>
    <br>
    <p><b>Your favorite template engine </b></p>
    <p><input name="template" type="radio" value="JSP"> JSP</p>
    <p><input name="template" type="radio" value="JSP+JSTL"> JSP+JSTL</p>
    <p><input name="template" type="radio" value="Thymeleaf" checked> Thymeleaf</p>
    <input type="submit" value="Send">
</form>
</body>
</html>
