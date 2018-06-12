<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>検索結果</title>
    </head>
    <body>
        <%
           request.setCharacterEncoding("UTF-8");
           Connection db_con = null;
           PreparedStatement db_st = null;
           ResultSet db_data = null;
           
           String a = request.getParameter("Name");
           int b = Integer.parseInt(request.getParameter("Age"));
           String ye = request.getParameter("Y");
           String mo = request.getParameter("M");
           String da = request.getParameter("D");
           String ymd = ye+"-"+mo+"-"+da;
           SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
           Date ymd2 = sdf.parse(ymd);
           java.sql.Date c = new java.sql.Date(ymd2.getTime());
           
           try{
              Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
              db_con = DriverManager.getConnection
               ("jdbc:mysql://localhost:3306/Challenge_db"
                      +"?characterEncoding=UTF-8&serverTimezone=JST","root","");
           
              db_st = db_con.prepareStatement
               ("select * from profiles where (name = ? "
                                                + "or age = ? or birthday = ?)");
              db_st.setString(1,a);
              db_st.setInt(2,b);
              db_st.setDate(3,c);
              
              db_data = db_st.executeQuery();
              
              while(db_data.next()){out.println(db_data.getInt("profilesID")+" "
                     +db_data.getString("name")+" "+db_data.getString("tel")+" "
                     +db_data.getInt("age")+" "+db_data.getDate("birthday"));
              }
              
              db_con.close();
              db_st.close();
              db_data.close();
              
           }catch(SQLException e_sql){
              out.println("接続時にエラーが発生しました"+e_sql.toString());
           }catch(Exception e){
           }finally{
              if(db_con !=null){
                 try{
                    db_con.close();
                 }catch(Exception e_con){
                    out.println(e_con.getMessage());
                 }
              }
           }
        %>
    </body>
</html>