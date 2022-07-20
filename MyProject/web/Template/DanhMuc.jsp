<%-- 
    Document   : DanhMuc
    Created on : Dec 2, 2016, 11:16:18 PM
    Author     : TiT_TM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="col-sm-2 sidenav">
      <p><a href="/QLSV/User/index.jsp">Trang chủ</a> <p>
      <p><a href="/QLSV/User/QLLopHoc/BangDiem.jsp">Xem bảng điểm</a>	<p>
        <p>            <a href="/QLSV/User/XemTKB/TKB.jsp">Xem thời khóa biểu</a>	<p>
                    <%
                        
                       if (session.getAttribute("loged") != null) {
                                        
                    %>
         <p>           <a href="/QLSV/HocSinh_servlet?logout=true">Đăng xuất</a>	<p>
                    <% } else { %>
          <p>          <a href="/QLSV/index.jsp">Đăng nhập</a>	<p>
          <p>          <a href="#">Đăng ký</a>	<p>
                    <% response.sendRedirect("/QLGV/index.jsp");  }%>
    </div>
