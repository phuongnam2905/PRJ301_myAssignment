<%-- 
    Document   : menu_admin.jsp
    Created on : Nov 28, 2016, 7:55:21 AM
    Author     : TiT_TM
--%>
<%@page import="DTO.HocSinh_DTO"%>
<%@page pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
                            <%
                  
                    HocSinh_DTO gv = new HocSinh_DTO();
                    if (session.getAttribute("loged") != null) {
                        gv = (HocSinh_DTO) session.getAttribute("loged");
                        if (gv.getCapDo() == 2) {
                            response.sendRedirect("/QLSV/User/index.jsp");
                            return;
                        }}
                    if (session.getAttribute("loged") == null)
                    {
                        response.sendRedirect("/QLSV/index.jsp");
                        return;
                    }
                %>
				<a class="navbar-brand" href="#"><span>Quản Lý</span> Sinh Viên</a>
				<ul class="user-menu">
					<li><a href="/QLSV/HocSinh_servlet?logout=true"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
                              