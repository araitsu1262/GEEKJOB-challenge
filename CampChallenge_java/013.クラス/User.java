package org.camp.card;

import java.util.ArrayList;


class User extends Human1{
        
   @Override
   public void setCard(ArrayList<Integer> num){
     for(int i=0;i<num.size();i++){
     myCards.add(num.get(i));
     }
   }
    
   @Override
   public int open(){
     int sum=0;
       for(int x=0;x<myCards.size();x++){
       sum +=(myCards.get(x));
       }
     return sum;
   }

   @Override
   public boolean checkSum() {
     return(open()<17);
   }
   
}