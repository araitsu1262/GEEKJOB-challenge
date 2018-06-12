<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>更新</title>
    </head>
    <body>
        <%
           out.println("<form action=\"./reading2.jsp\" method=\"post\">");
           out.print("ID:");
           out.println("<td><input type=\"text\" name=\"ID\"></td>");
           out.print("商品名:");
           out.println("<td><input type=\"text\" name=\"name\"></td>");
           out.print("個数:");
           out.println("<td><input type=\"text\" name=\"num\"></td>");
           out.print("<td><input type=\"submit\" value=\"更新\"></td>");
           out.print("<br><br>");
           out.println("</form>");
           out.println("<form action=\"./lll.html\" method=\"post\">");
           out.println("<td><input type=\"submit\" value=\"ログアウト\"></td>"); 
           out.println("</form>");    
        %>
    </body>
</html>
