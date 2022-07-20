/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DTO.Lop_DTO;
import Model.Lop_Model;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import  jakarta.servlet.http.HttpServlet;
import  jakarta.servlet.http.HttpServletRequest;
import  jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author win
 */
public class Lopservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Lopservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Lopservlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        HttpSession session = request.getSession();
        String delete = request.getParameter("id_lop");
        Lop_Model lop_model = new Lop_Model();
        lop_model.Delete(delete);
        session.setAttribute("Thongbao", "Xóa thành công");
        response.sendRedirect("Admin/QLLopHoc/Lop.jsp");
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
       // processRequest(request, response);
       try{
            String result = request.getParameter("search");
            HttpSession session = request.getSession();
            Lop_Model lop_model = new Lop_Model();
            ArrayList<Lop_DTO> list = new ArrayList<Lop_DTO>();
            if(result!=null)
            {
                list = lop_model.get_by_id(result);
                session.setAttribute("result", list);
                response.sendRedirect("/QLSV/Admin/QLLopHoc/KetQua.jsp");   
                return;
            }
        //thêm vào csdl
                Lop_DTO lop = new Lop_DTO();
                
                lop.setTenLop(request.getParameter("tenlop"));
                lop.setSiSo(Integer.parseInt(request.getParameter("siso")));
                if(request.getParameter("id")!=null){
                lop.setLop_ID(Integer.parseInt(request.getParameter("id")));
               if(lop_model.Update(lop))
               {
                   session.setAttribute("Thongbao", "Sửa thành công");
                   response.sendRedirect("/QLSV/Admin/QLLopHoc/Lop.jsp");
                   return;
               }
               else
               {
                   session.setAttribute("Thongbao", null);
                   response.sendRedirect("/QLSV/Admin/QLLopHoc/Lop.jsp");
               }}
               if(lop_model.insert(lop))
               {
                   session.setAttribute("Thongbao", "Thêm thành công");
                   response.sendRedirect("/QLSV/Admin/QLLopHoc/Lop.jsp");   
                   return;
               }else
               {
                   session.setAttribute("Thongbao", null);
                   response.sendRedirect("/QLSV/Admin/QLLopHoc/Lop.jsp");
               }
        }catch(Exception e)
        {
            response.sendRedirect("/QLSV/Admin/QLLopHoc/Lop.jsp");
        }
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
