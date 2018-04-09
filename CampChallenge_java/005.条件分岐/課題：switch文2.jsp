<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

char word = 'A';

switch (word){
    
    case 'A': 
    out.print("英語");
    break;
    
    case 'あ':
    out.print("日本語");
    break;
    
    default:
    break;
    
}

%>
