package org.camp.file;


import java.io.*;

class profile2 {
    
   public static void main(String[] args){
      
      try{ 
      
          File fp = new File("test.txt");    
       
              FileReader fr = new FileReader(fp);
              
              BufferedReader br = new BufferedReader(fr);
              
              System.out.println(br.readLine());
          
      }catch(IOException e){
         e.printStackTrace();
         
      }
   }  
}
