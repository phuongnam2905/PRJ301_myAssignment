<%-- 
    Document   : menu_user
    Created on : Nov 29, 2016, 2:40:50 PM
    Author     : TiT_TM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Trang chủ</a></li>
        <%
        if (session.getAttribute("loged") != null) {
        %>
        <li><a href="/QLSV/HocSinh_servlet?logout=true">Đăng xuất</a></li>
        <%
        }else{
        %>
        
        <li><a href="#">Đăng ký</a></li>
        <li><a href="/QLSV/index.jsp">Đăng nhập</a></li>
        <% }
        %>
        
      </ul>
      
    </div>
  </div>
</nav>


