<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品一覧</title>
    </head>
    <body>
        <%
           request.setCharacterEncoding("UTF-8");
           Connection con_re = null;
           PreparedStatement st_re = null;
           ResultSet data_re = null;
           
           try{
              Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
              con_re = DriverManager.getConnection
               ("jdbc:mysql://localhost:3306/Challenge_db"
                      +"?characterEncoding=UTF-8&serverTimezone=JST","root","");
              
              st_re = con_re.prepareStatement("select * from product");
              data_re = st_re.executeQuery();
              
              while(data_re.next()){out.println(data_re.getInt("ID")+" "
                       +"商品名："+data_re.getString("goods")+" "
                      +"個数："+data_re.getInt("number"));
              }

              out.println("<form action =\"./loginok.jsp\" method =\"POST\">");
              out.println("<td><input type =\"submit\" value =\"戻る\">");
              out.println("</form>");
              out.println("<br>");
              out.println("<form action =\"./lll.html\" method=\"POST\">");
              out.println("<td><input type =\"submit\" value=\"ログアウト\"></td>");
              out.println("</form>");              
              
              con_re.close();
              st_re.close();
              data_re.close();
              
              
           }catch(SQLException e_sql){
              out.println("接続時にエラーが発生しました"+e_sql.toString());
           }catch(Exception e){
           }finally{
              if(con_re !=null){
                 try{
                    con_re.close();
                 }catch(Exception e_con){
                    out.println(e_con.getMessage());
                 }
              }
           }         
        %>
    </body>
</html>
