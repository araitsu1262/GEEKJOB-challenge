package org.camp.db;


import java.sql.*;

public class challenge3 {

    public static void main(String[] ages){
    
    Connection db_con = null;
    PreparedStatement db_st = null;
    ResultSet db_data = null;
    
       try{

          Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
          db_con = DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/Challenge_db"
                  + "?characterEncoding=UTF-8&serverTimezone=JST","root","");
       
          db_st = db_con.prepareStatement("select * from profiles");
          
          db_data = db_st.executeQuery();
          
          while(db_data.next()){
             System.out.println(db_data.getInt("profilesID")+" "
                     +db_data.getString("name")+" "+db_data.getString("tel")+" "
                     +db_data.getInt("age")+" "+db_data.getDate("birthday"));
          }   
          db_data.close();
          db_st.close();
          db_con.close();
       
       }catch(SQLException e_sql){
           
          System.out.println("接続時にエラーが発生しました"+e_sql.toString());       
       
       }catch(Exception e){
       
       }finally{
       
          if (db_con != null){
             try {
               db_con.close();
             } catch (Exception e_con) {
               System.out.println(e_con.getMessage());
             }
          }
       }   
    }           
}