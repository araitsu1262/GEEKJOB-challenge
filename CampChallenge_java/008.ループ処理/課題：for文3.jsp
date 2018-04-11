<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

int total = 0;
for(int i = 1; i<=100 ;i++){total = total + i;}

out.print(total);

%>