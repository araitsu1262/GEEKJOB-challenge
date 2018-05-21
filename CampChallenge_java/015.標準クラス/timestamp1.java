package org.camp.time;


import java.util.Calendar;
import java.util.Date;

class timestamp1 {

   public static void main(String ages[]){
   
   Calendar c = Calendar.getInstance();
   c.set(2016,0,1,0,0,0);
   
   Date d = c.getTime();
   
   System.out.print(d.getTime());
   
   }
    
}
