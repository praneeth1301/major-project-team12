
package com.servlets;
import java.io.IOException;
import javax.servlet.*;
public class firstservlet implements servlet {
    ServletConfig conf;
    public void init(ServletConfig conf){
        this.conf=conf;
        System.out.println("heyllo");
    }
     public void services(ServletRequest req,ServletResponse resp)throws ServletException,IOException{
       System.out.println("hey");
    }
     public void destroy(){
         
     }
}
