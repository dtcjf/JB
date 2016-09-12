package com.apachegoo.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WebUtils {
	public static void showJson(HttpServletRequest request,HttpServletResponse response,String json){
		response.setCharacterEncoding("UTF-8");  
        response.setHeader("Cache-Control", "no-cache");    
        response.setContentType("application/json");  
        PrintWriter out=null;  
        try {  
           out=response.getWriter();  
           out.print(json);  
           out.flush();  
           out.close();  
       } catch (IOException e) {  
           e.printStackTrace();  
       }
	}
}
