/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DTO.HocSinh_DTO;
import Model.HocSinh;
import Model.HocSinh_Model;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author win
 */
public class HocSinhservlet extends HttpServlet {

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
            out.println("<title>Servlet HocSinhservlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HocSinhservlet at " + request.getContextPath() + "</h1>");
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
        String delete = request.getParameter("id_hs");
        HocSinh hs_model = new HocSinh();
        if(request.getParameter("logout")!=null)
            {
                session.invalidate();
                response.sendRedirect("/QLSV/index.jsp");   
                return;
            }
        //hs_model.Delete(delete);
        session.setAttribute("Thongbao", "Xóa thành công");
        response.sendRedirect("Admin/QLSinhVien/SinhVien.jsp");
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
        //processRequest(request, response);
     try{
            
            
            
            
            String result = request.getParameter("search");
            HttpSession session = request.getSession();
            HocSinh_Model hs_model = new HocSinh_Model();
            ArrayList<HocSinh_DTO> list = new ArrayList<HocSinh_DTO>();
            
           
            if (request.getParameter("login") != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if (hs_model.login(username, password) != null) {
                    session.setAttribute("loged", hs_model.login(username, password));
                    if(hs_model.login(username, password).getCapDo()==2)
                    {
                        response.sendRedirect("/QLSV/User/index.jsp");
                        return;
                    }
                    response.sendRedirect("/QLSV/Admin/index.jsp");
                    return;
                }
                else
                {
                    session.invalidate();
                    response.sendRedirect("/QLSV/index.jsp");
                    return;
                }
            }
            
            if(result!=null)
            {
                list = hs_model.get_by_id(result);
                session.setAttribute("result", list);
                response.sendRedirect("/QLSV/Admin/QLSinhVien/KetQua.jsp");   
                return;
            }
             HocSinh_DTO hs = new HocSinh_DTO();
            
            if(request.getParameter("user")!=null)
            {
                if(request.getParameter("mkmoi2")!=null&&request.getParameter("mkmoi").equals(request.getParameter("mkmoi2")))
                {
                    hs.setMatKhau(request.getParameter("mkmoi"));
                    hs.setID_HS(Integer.parseInt(request.getParameter("idhs")));
                    hs_model.EditPass(hs);
                    session.setAttribute("editpass", "success");
                    response.sendRedirect("/QLSV/User/EditPass.jsp");
                    return;
                }
            }
            
        //thêm vào csdl
              
                
                hs.setTenHS(request.getParameter("tensv"));
                hs.setSDT(request.getParameter("sdt"));
                hs.setDiaChi(request.getParameter("diachi"));
                hs.setTaiKhoan(request.getParameter("taikhoan"));
                hs.setMatKhau(request.getParameter("matkhau"));
                hs.setCapDo(Integer.parseInt(request.getParameter("capdo")));
                hs.setNgaySinh(Date.valueOf(request.getParameter("ngaysinh")));
                if(request.getParameter("dk")==null)
                {
                    hs.setLop_id(request.getParameter("lopid"));
                    hs.setDTB(Float.parseFloat(request.getParameter("diemtb")));
                }
                if(request.getParameter("matkhau2")!=null)
                {
                    if(request.getParameter("matkhau").equals(request.getParameter("matkhau2")))
                    {
                        session.setAttribute("register", "success");
                        hs_model.insert(hs);
                        response.sendRedirect("/QLSV/User/register.jsp");  
                        return;
                    }else
                    {
                        session.setAttribute("register", "faild");
                        response.sendRedirect("/QLSV/User/register.jsp");
                        return;
                    }
                    
                }
                if(request.getParameter("idhs")!=null){
                hs.setID_HS(Integer.parseInt(request.getParameter("idhs")));
               if(hs_model.Update(hs))
               {
                   session.setAttribute("Thongbao", "Sửa thành công");
                   response.sendRedirect("/QLSV/Admin/QLSinhVien/SinhVien.jsp");
                   return;
               }
               else
               {
                   session.setAttribute("Thongbao", null);
                   response.sendRedirect("/QLSV/Admin/QLSinhVien/SinhVien.jsp");
               }}
               if(hs_model.insert(hs))
               {
                   session.setAttribute("Thongbao", "Thêm thành công");
                   response.sendRedirect("/QLSV/Admin/QLSinhVien/SinhVien.jsp");   
                   return;
               }else
               {
                   session.setAttribute("Thongbao", null);
                   response.sendRedirect("/QLSV/Admin/QLSinhVien/SinhVien.jsp");
               }
        }catch(Exception e)
        {
            response.sendRedirect("/QLSV/User/register.jsp");
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
