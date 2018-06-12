<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ログイン</title>
    </head>
    <body>
        <%
           request.setCharacterEncoding("UTF-8");
           Connection con_user = null;
           PreparedStatement st_user = null;
           ResultSet data_user = null;
           
           int num = 0;
           
           HttpSession hs = request.getSession(true);
           hs.setAttribute("n",request.getParameter("Name"));
           hs.setAttribute("p",request.getParameter("Pass"));
           
           try{
              Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
              con_user = DriverManager.getConnection
               ("jdbc:mysql://localhost:3306/Challenge_db"
                      +"?characterEncoding=UTF-8&serverTimezone=JST","root","");
              
              st_user = con_user.prepareStatement
               ("select * from management where (name = ? and password =?)");
              st_user.setObject(1,hs.getAttribute("n"));
              st_user.setObject(2,hs.getAttribute("p"));
              data_user = st_user.executeQuery();
              
              while(data_user.next()){
                 num =num+1;
                 if(num>=1){
                    out.println("ようこそ"+data_user.getString("name")+"さん");
                    out.println("<form action =\"./loginok.jsp\" method =\"POST\">");
                    out.println("<td><input type =\"submit\" value =\"GO\"></td>");
                    out.println("</form>");
                    out.println("<form action=\"./lll.html\" method=\"POST\">");
                    out.println("<td><input type=\"submit\" value=\"ログアウト\"></td>");
                    hs.invalidate();
                    out.println("</form>");
                 }
              }
              if(num==0){
                    out.println("ログインできませんでした。");
                    hs.invalidate();
                    out.println("<form action =\"./lll.html\" method=\"POST\">");
                    out.println
                    ("<td><input type =\"submit\" value=\"戻る\"></td>");
                    out.println("</form>");
              }
              
              con_user.close();
              st_user.close();
              data_user.close();
           }catch(SQLException e_sql){
              out.println("接続時にエラーが発生しました"+e_sql.toString());
           }catch(Exception e){
           }finally{
              if(con_user != null){
                 try{
                    con_user.close();
                 }catch(Exception e_con){
                    out.println(e_con.getMessage());
                 }
              }
           }           
        
        
        
        %>
    </body>
</html>
