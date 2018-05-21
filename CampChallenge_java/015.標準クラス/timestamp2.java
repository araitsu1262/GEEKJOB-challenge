package org.camp.time;


import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

class timestamp2 {
    
    public static void main(String ages[]){
       
        Calendar c = Calendar.getInstance();
        c.set(2016,10,4,10,0,0);
        
        Date d = c.getTime();
        System.out.println(d.getTime());
        
        SimpleDateFormat sdf=
          new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       
        System.out.print(sdf.format(d));
    }
}
