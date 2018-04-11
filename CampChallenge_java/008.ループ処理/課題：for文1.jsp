<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

long result = 1;
for (int i = 1; i <=20; i++){result = result * 8;}

out.print(result);

%>