<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>サンプル</title>
    </head>
    <body>
       <%
       request.setCharacterEncoding("UTF-8");
       out.print(request.getParameter("name"));
       out.print(request.getParameter("gender"));
       out.print(request.getParameter("hobby"));
       %>
    </body>
</html>
