<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
final int num1 = 56;
int num2 = 25;
    
int wa = num1 + num2;
int sa = num1 - num2;
int seki = num1 * num2;
int syo = num1 / num2;
int amari = num1 % num2;

out.print(wa);out.print("<br>");
out.print(sa);out.print("<br>");
out.print(seki);out.print("<br>");
out.print(syo);out.print("<br>");
out.print(amari);
%>