<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>

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
           
           int a = Integer.parseInt(request.getParameter("ProfilesID"));
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
                        + "?characterEncoding=UTF-8&serverTimezone=JST","root","");
              
              db_st = db_con.prepareStatement
               ("insert into profiles values(?,?,?,?,?)");
              db_st.setInt(1,a);
              db_st.setString(2,b);
              db_st.setString(3,c);
              db_st.setInt(4,d);
              db_st.setDate(5,f);
              int n = db_st.executeUpdate();
              
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
               out.print("接続時にエラーが発生しました"+e_sql.toString());
           }catch(Exception e){
           }finally{
              if(db_con != null){
                 try{
                    db_con.close();
                 }catch (Exception e_con){
                    System.out.println(e_con.getMessage());
                 }
              }
           }
        %>
    </body>
</html>
