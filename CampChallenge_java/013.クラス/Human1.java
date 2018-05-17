package org.camp.card;

import java.util.ArrayList;


abstract class Human1 extends BlackJack{
    
    protected ArrayList<Integer> myCards= new ArrayList<>();
    abstract public int open();
    abstract public void setCard(ArrayList<Integer> num);
    abstract public boolean checkSum();
}
