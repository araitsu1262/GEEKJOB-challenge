<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form action="./querist.jsp" method="get">
          商品の総額：<input type="text" name="total"><br>
          商品の数量：<input type="text" name="count"><br>
          商品種別：雑貨<input type="radio" name="type" value="1">
          /生鮮食品<input type="radio" name="type" value="2">
          /その他<input type="radio" name="type" value="3">
          <input type="submit" value="送信">
      </form>  
    </body>
</html>
