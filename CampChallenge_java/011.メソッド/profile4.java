package org.camp.servlet2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class profile4 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     String[] a (String b){  
       String[][] data =
       {{"arupaaaaaka1262","1995年5月4日","神奈川県藤沢市亀井野"},
        {"germaaaaan","1995年5月4日","茨城県筑西市"},
        {"snow.white","1988年10月1日",null}};
  
       int limit=2;
       for(int i=0;i<=2;i++){
           
       if(i<limit){
       
        if(b.equals(data[i][0])){
           return data[i];
        }
        
       }
   
       }
          return null;
     }
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
   
            
             String[] arr1=a("arupaaaaaka1262");
             String[] arr2=a("germaaaaan");
             String[] arr3=a("snow.white");
              
              for(int i=0;i<=2;i++){
                   
                   if(arr1[i]==null){
                     continue;
                   }
                    
                   out.print(arr1[i]);
              }              
               
              for(int i=0;i<=2;i++){
                   
                   if(arr2[i]==null){
                     continue;
                   }
                   
                   out.print(arr2[i]); 
              }
               
              for(int i=0;i<=2;i++){
                   
                   if(arr3[i]==null){
                     continue;
                   }
                   
                   out.print(arr3[i]); 
              } 
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
