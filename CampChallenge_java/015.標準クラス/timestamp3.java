package org.camp.time;


import java.util.Calendar;
import java.util.Date;

class timestamp3 {
    
    public static void main(String ages[]){
    
    Calendar c = Calendar.getInstance();
    Calendar ca = Calendar.getInstance();
    c.set(2015,0,1,0,0,0);
    ca.set(2015,11,31,23,59,59);
    
    Date d = c.getTime();
    Date da = ca.getTime();
    
    long a = d.getTime();
    long b = da.getTime();
    
    long sa =b-a;
    
    System.out.print(sa);
    
    }
}
