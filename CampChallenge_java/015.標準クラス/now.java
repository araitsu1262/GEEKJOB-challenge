package org.camp.time;


import java.util.Date;
import java.text.SimpleDateFormat;

class now {
    
  public static void main(String ages[]){
  
     Date now = new Date();
     
     SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy月MM月dd日 HH時mm分ss秒");
     
     System.out.print(sdf.format(now));
  
  }     
}
