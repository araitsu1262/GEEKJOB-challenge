<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String t = request.getParameter("type");

         String a = request.getParameter("total");
         int b =Integer.parseInt(a);
        
         String ab = request.getParameter("count");
         int abc =Integer.parseInt(ab);
         int y =Integer.parseInt(t);
        
         int o = b/abc;
        
           if(y==1){out.println("雑貨");
           }else if(y==2){out.println("生鮮食品");
           }else{out.println("その他");}
        
           if(y==1){out.println("商品の単価："+o+"円");
           }else if(y==2){out.println("商品の単価："+o+"円");
           }else{out.println("商品の単価："+o+"円");
           }

        
           if(b<3000){
           double c=b*0.00;
           c=Math.rint(c);
           int cc=(int)c;
           out.println(cc+"ポイント");
           }else if(b>=3000&&b<5000){
           double d=b*0.04;
           d=Math.rint(d);
           int dd=(int)d;
           out.println(dd+"ポイント");
           }else{
           double e=b*0.05;
           e=Math.rint(e);
           int ee=(int)e;
           out.println(ee+"ポイント");
           }
        %>
    </body>
</html>
