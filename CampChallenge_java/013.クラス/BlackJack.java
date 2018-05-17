package org.camp.card;


public class BlackJack {
    
  public static void main(String ages[]){
    
    Dealer dea = new Dealer(); 
    User use = new User();
    
    dea.open();
    dea.setCard(dea.deal());
    while(dea.checkSum()){
      dea.setCard(dea.hit());
    }
    
    use.open();
    use.setCard(dea.deal());
    while(use.checkSum()){
      use.setCard(dea.hit());
    }

    System.out.println(dea.open());
    System.out.println(use.open());
    
    if(dea.open()<use.open()&&dea.open()<=21&&use.open()<=21
    ||dea.open()>21&&use.open()<=21){
    System.out.println("あなたの勝ちです");
    }else if(dea.open()==use.open()||dea.open()>21&&use.open()>21){
    System.out.println("引き分けです");
    }else{
    System.out.println("あなたの負けです");
    }

  }
}