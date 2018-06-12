<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           request.setCharacterEncoding("UTF-8");
           Connection con_re = null;
           PreparedStatement st_re = null;
           ResultSet data_re = null;
           
           int a = Integer.parseInt(request.getParameter("ID"));
           String b = request.getParameter("name");
           int c = Integer.parseInt(request.getParameter("num"));

           try{
              Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
              con_re = DriverManager.getConnection
               ("jdbc:mysql://localhost:3306/Challenge_db"
                      +"?characterEncoding=UTF-8&serverTimezone=JST","root","");
              
                 st_re = con_re.prepareStatement
                  ("insert into product values (?,?,?)");
                  st_re.setInt(1,a);
                  st_re.setString(2,b);
                  st_re.setInt(3,c);
                  int n =st_re.executeUpdate();
              
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
