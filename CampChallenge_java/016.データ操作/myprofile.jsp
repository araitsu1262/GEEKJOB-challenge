<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           request.setCharacterEncoding("UTF-8"); 
            
           HttpSession hs =request.getSession();
           
           hs.setAttribute("Name", request.getParameter("name"));
           hs.setAttribute("Gender", request.getParameter("gender"));
           hs.setAttribute("Hobby", request.getParameter("hobby"));
           
           out.print(hs.getAttribute("Name")+"<br>");
           out.print(hs.getAttribute("Gender")+"<br>");
           out.print(hs.getAttribute("Hobby"));
        %>
    </body>
</html>
