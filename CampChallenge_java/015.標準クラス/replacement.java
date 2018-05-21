package org.camp.mojiretsu;


class replacement {
    
    public static void main(String[] ages){
       
       String word = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
     
       String w = word.replace("U","う").replace("I","い");
        
       System.out.println(w);
         
    }
}
