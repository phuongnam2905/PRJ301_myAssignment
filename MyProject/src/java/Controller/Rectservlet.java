/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import Model.MyRect;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/rect"})
public class Rectservlet extends HttpServlet {

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int num = Integer.parseInt(request.getParameter("num"));
        ArrayList<MyRect> rects = new ArrayList<>();
        Random random = new Random();
        for (int i = 0; i < num; i++) {
            MyRect r = new MyRect();
            r.setW(random.nextInt(51) + 50);
            r.setH(random.nextInt(51) + 50);
            r.setX(random.nextInt(500 - r.getW()));
            r.setY(random.nextInt(500 - r.getH()));
            r.setRed(random.nextInt(256));
            r.setGreen(random.nextInt(256));
            r.setBlue(random.nextInt(256));
            rects.add(r);
        }
        //
        request.setAttribute("rects", rects);
        request.getRequestDispatcher("/view/rect/list.jsp").forward(request, response);
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
       String number = request.getParameter("number");
       
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
