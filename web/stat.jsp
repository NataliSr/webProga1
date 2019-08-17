<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Nata
  Date: 16.08.2019
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Statistic</title>
</head>
<body>
<p><b> Hello,

    <%
        String name = (String) request.getAttribute("name");
        String lastName = (String) request.getAttribute("lastname");
        Integer age = (Integer) request.getAttribute("age");
        out.print(name + " ");
        out.print(lastName + ", ");
        out.print(age + "<br>");

    %>
</b></p>

<p><b> Statistic </b></p>

<%
    Map<Integer, Map<String, Integer>> stat = (Map<Integer, Map<String, Integer>>) request.getAttribute("statistic");
    for (Integer n : stat.keySet()) {
        out.print("<p>");
        out.print("Question № " + n + "<br>");
        Map<String, Integer> question = stat.get(n);
        for (String key : question.keySet()) {
            out.print("<br>");
            out.print(key + " - " + question.get(key));
        }
        out.print("</p>");
    }
%>

</body>
</html>
