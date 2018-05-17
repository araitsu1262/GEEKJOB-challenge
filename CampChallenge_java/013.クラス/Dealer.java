package org.camp.card;

import java.util.ArrayList;
import java.util.Random;


class Dealer extends Human1{
    
    protected ArrayList<Integer> cards =new ArrayList<>();
    
    public Dealer(){
      for(int z=1;z<=4;z++){
        for(int ca=1;ca<=13;ca++){
          cards.add(ca);
        }
        for(int f=0;f<cards.size();f++){
          if(cards.get(f)>10){
            cards.set(f,10);
          }
        }
      } 
    }
     
    public ArrayList<Integer> deal(){
   
    ArrayList<Integer> p=new ArrayList<>();
    Random rand = new Random();
     
      for(int a=1;a<=2;a++){
      Integer index = rand.nextInt(cards.size());
      p.add(cards.get(index));
      cards.remove(index);
      }
       
    return p;   
    }
    
    public ArrayList<Integer> hit(){
    
    ArrayList<Integer> o=new ArrayList<>();
    Random rand = new Random();
    Integer index = rand.nextInt(cards.size());
    o.add(cards.get(index));
    cards.remove(index);
    
    return o;
    }
    
  
    @Override
   public void setCard(ArrayList<Integer> num){
       for(int i =0;i<num.size();i++){
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
   public boolean checkSum(){
      return(open()<17);
   }
   
}
