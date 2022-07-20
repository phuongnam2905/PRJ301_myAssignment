<%@page import="java.util.ArrayList"%>
<%@page import="DTO.*"%>
<%@page import="Model.*"%>

<%-- 
    Document   : index2
    Created on : Dec 2, 2016, 8:20:58 PM
    Author     : TiT_TM
--%>


<!DOCTYPE html>
<html>
      
   <%@include file="/Template/head_admin.jsp" %>
  
<body>
    <%@ page contentType="text/html; charset=UTF-8" %>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Quản Lý</span> Sinh Viên</a>
				<%@include  file="/Template/menu_admin.jsp" %>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
                    <li><a href="/QLSV/Admin/QLSinhVien/SinhVien.jsp"">Quản lý sinh viên</a></li>
                    <li><a href="/QLSV/Admin/QLLopHoc/Lop.jsp">Quản lý lớp</a></li>
                    <li><a href="/QLSV/Admin/QLMonHoc/Mon.jsp">Quản lý môn</a></li>
                    <li><a href="/QLSV/Admin/QLBangDiem/BangDiem.jsp">Quản lý bảng điểm</a></li>
                    
                    <li><a href="/QLSV/Admin/QLTKB/TKB.jsp">Sắp thời khóa biểu</a></li>
			
		</ul>

	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Trang Chủ</li>
			</ol>
		</div><!--/.row-->
		<div class="col-sm-12">
                    <div>
                        <form action="/QLGV/BangDiem_servlet" method="POST" role="form">
                        <div class="form-group">
                            <%
                                BangDiem_DTO bd = new BangDiem_Model().select_by_id(request.getParameter("id_bd"));
                                Lop_DTO lop = new Lop_Model().select_by_id(bd.getLop_id());
                                MonHoc_DTO mon = new Mon_Model().select_by_id(bd.getMon_id());
                                HocSinh_DTO hs = new HocSinh_Model().select_by_id(bd.getHS_id());
                            %>
                                <input type="hidden" name="id_bd" class="form-control" value="<%=bd.getBD_ID()%>" id="" placeholder="Thêm tên lớp">
                                <label for="">Tên học sinh</label>
                                <input type="text" name="" class="form-control" value="<%=hs.getTenHS()%>" id="" placeholder="Thêm tên học sinh">
                                <input type="hidden" name="idhs" class="form-control" value="<%=hs.getID_HS()%>" id="" placeholder="Thêm tên lớp">
                                <label for="">Lớp</label>
                                <input type="text" name="" class="form-control" value="<%=lop.getTenLop()%>" id="" placeholder="Thêm tên lớp">
                                <input type="hidden" name="idlop" class="form-control" value="<%=lop.getLop_ID()%>" id="" placeholder="Thêm tên lớp">
                                <label for="">Môn</label>
                                <input type="text" name="" class="form-control" value="<%=mon.getTenMon()%>" id="" placeholder="Thêm tên môn">
                                <input type="hidden" name="idmon" class="form-control" value="<%=mon.getMon_ID()%>" id="" placeholder="Thêm tên lớp">
                                <label for="">Điểm</label>
                                <input type="text" name="diem" class="form-control" value="<%=bd.getDiem()%>" id="" placeholder="Thêm điểm">
                               
                        </div>
                            <button type="submit" class="btn btn-primary">Lưu</button>
                       </form>

                        </div>
                        <div>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Tên học sinh</th>
                                        <th>Lớp</th>
                                        <th>Môn học</th>
                                        <th>Điểm</th>
                                        <th>Tùy chọn</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ArrayList<BangDiem_DTO> list_bd = new BangDiem_Model().get_all();
                                        for (BangDiem_DTO items : list_bd) {
                                    %>
                                    <tr>
                                        <td><%=items.getHS_id()%></td>
                                        <td><%=items.getLop_id()%></td>
                                        <td><%=items.getMon_id()%></td>
                                        <td><%=items.getDiem()%></td>
                                        <td><a href="/QLGV/Admin/QLBangDiem/Sua.jsp?id_bd=<%=items.getDiem()%>">Sửa</a></td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
		
	</div>	<!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>




