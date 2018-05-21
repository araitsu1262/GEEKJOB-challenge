package org.camp.file;


import java.io.*;

class profile {
   
    public static void main(String[] ages){
    
       try{
        
          File fp = new File("test.txt");
    
          FileWriter fw = new FileWriter(fp);
    
          fw.write("私は新井と申します。");
          
          fw.close();
    
        }catch(IOException e){
         e.printStackTrace();
         
        }
    }  
}