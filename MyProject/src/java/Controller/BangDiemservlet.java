/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DTO.BangDiem_DTO;
import Model.BangDiem_Model;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author win
 */
public class BangDiemservlet extends HttpServlet {

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
            out.println("<title>Servlet BangDiemservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BangDiemservlet at " + request.getContextPath() + "</h1>");
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
        String delete = request.getParameter("id_bd");
        BangDiem_Model bd_model = new BangDiem_Model();
        bd_model.Delete(delete);
        session.setAttribute("Thongbao", "Xóa thành công");
        response.sendRedirect("Admin/QLBangDiem/BangDiem.jsp");
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
        //processRequest(request, response);try{
             try{
            String result = request.getParameter("search");
            HttpSession session = request.getSession();
            BangDiem_Model bd_model = new BangDiem_Model();
            ArrayList<BangDiem_DTO> list = new ArrayList<BangDiem_DTO>();
            if(result!=null)
            {
                list = bd_model.get_by_id(result);
                session.setAttribute("result", list);
                if(request.getParameter("user")!=null)
                {
                    response.sendRedirect("/QLGV/User/QLLopHoc/KQBangDiem.jsp");
                    return;
                }
                response.sendRedirect("/QLGV/Admin/QLBangDiem/KetQua.jsp");   
                return;
            }
        //thêm vào csdl
                BangDiem_DTO bd = new BangDiem_DTO();
                
                bd.setMon_id(request.getParameter("idmon"));
                bd.setLop_id(request.getParameter("idlop"));
                bd.setHS_id(request.getParameter("idhs"));
                bd.setDiem(Integer.parseInt(request.getParameter("diem")));
                
                if(request.getParameter("id_bd")!=null){
                bd.setBD_ID(Integer.parseInt(request.getParameter("id_bd")));
               if(bd_model.Update(bd))
               {
                   session.setAttribute("Thongbao", "Sửa thành công");
                   response.sendRedirect("/QLGV/Admin/QLBangDiem/BangDiem.jsp");
                   return;
               }
               else
               {
                   session.setAttribute("Thongbao", null);
                   response.sendRedirect("/QLGV/Admin/QLBangDiem/BangDiem.jsp");
               }}
               if(bd_model.insert(bd))
               {
                   session.setAttribute("Thongbao", "Thêm thành công");
                   response.sendRedirect("/QLGV/Admin/QLBangDiem/BangDiem.jsp");   
                   return;
               }else
               {
                   session.setAttribute("Thongbao", null);
                   response.sendRedirect("/QLGV/Admin/QLBangDiem/BangDiem.jsp");
               }
        }catch(Exception e)
        {
            response.sendRedirect("/QLGV/Admin/QLBangDiem/BangDiem.jsp");
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
