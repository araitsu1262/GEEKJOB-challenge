<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          request.setCharacterEncoding("UTF-8");
          String a =request.getParameter("number");    
          int b =Integer.parseInt(a);
        
          out.print(b+"=");
         
          for(int i=2;i<10;i++){
              
            while((b%i)==0){
              String I = String.valueOf(i)+"*";
               b=b/i;       
              out.print(I);
            }
          } 
           
          if(b>10){
             out.print("あまり"+b);
          }  
        %>
    </body>
</html>
