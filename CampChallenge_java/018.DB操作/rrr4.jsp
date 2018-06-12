<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>全件検索</title>
    </head>
    <body>
        <%
           request.setCharacterEncoding("UTF-8");
           Connection db_con = null;
           PreparedStatement db_st = null;
           ResultSet db_data = null;
        
           int a = Integer.parseInt(request.getParameter("ID"));
           String b = request.getParameter("Name");
           String c = request.getParameter("Tel");
           int d = Integer.parseInt(request.getParameter("Age"));
           SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
           String ye = request.getParameter("Y");
           String mo = request.getParameter("M");
           String da = request.getParameter("D");
           String ymd = ye+"-"+mo+"-"+da;
           Date ymd2 = sdf.parse(ymd);
           java.sql.Date f = new java.sql.Date(ymd2.getTime());
           
           try{
              Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
              db_con = DriverManager.getConnection
               ("jdbc:mysql://localhost:3306/Challenge_db"
                      +"?characterEncoding=UTF-8&serverTimezone=JST","root","");
              
              db_st = db_con.prepareStatement
               ("update profiles set name = ? where profilesID = ?");
              db_st.setString(1,b);
              db_st.setInt(2,a);
              int n = db_st.executeUpdate();
              
              db_st = db_con.prepareStatement
               ("update profiles set tel = ? where profilesID = ?");
              db_st.setString(1,c);
              db_st.setInt(2,a);
              int o = db_st.executeUpdate();
              
              db_st = db_con.prepareStatement
               ("update profiles set age = ? where profilesID = ?");
              db_st.setInt(1,d);
              db_st.setInt(2,a);
              int p = db_st.executeUpdate();
              
              db_st = db_con.prepareStatement
               ("update profiles set birthday = ? where profilesID =?");
              db_st.setDate(1,f);
              db_st.setInt(2,a);
              int q = db_st.executeUpdate();
              
              db_st = db_con.prepareStatement("select * from profiles");
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
