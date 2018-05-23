package org.camp.file;


import java.util.ArrayList;
import java.util.Random;
import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;

class math {
    
    public static void main(String[] args) throws IOException{
        
        ArrayList<Double> p=new ArrayList<>();
          
        for(double a=0.0;a<10;a++){
           for(double b=0;b<10;b++){
              double n = b/10;
              p.add(a+n);
              
           }
        }
          
        Random rand = new Random();
        int index =rand.nextInt(p.size());
        double num = p.get(index);
        
        num = Math.rint(num);
        
        double z =Math.max(num, 5.0);
   
        SimpleDateFormat sdf = new SimpleDateFormat("　yyyy年MM月dd日 HH:mm:ss　"); 
        
        Date d = new Date();
        
        File fp = new File("Log.txt");
        FileWriter fw = new FileWriter(fp);
        fw.write("乱数の四捨五入と比較"+sdf.format(d)+"開始");
      
        System.out.println(num+","+5.0);
        System.out.println(z+"の方が大きいです");
        
        Date da = new Date();
        
        fw.write(sdf.format(da)+"終了");
        fw.close();
        
    }
}