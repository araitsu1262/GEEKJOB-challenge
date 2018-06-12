<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品</title>
    </head>
    <body>
        <%

           out.println("商品一覧");
           out.println("<form action =\"./reading.jsp\" method =\"POST\">");
           out.print("<td><input type =\"submit\" value =\"確認\"></td>");
           out.println("</form>");
           out.println("商品の更新");
           out.println("<form action=\"./plus.jsp\" method=\"POST\">");
           out.println("<td><input type=\"submit\" value=\"更新\"></td>");
           out.println("</form>");
           out.println("<br>");
           out.println("<form action=\"./lll.html\" method=\"POST\">");
           out.println("<td><input type=\"submit\" value=\"ログアウト\"></td>");
           out.println("</form>");       
        %>
    </body>
</html>
