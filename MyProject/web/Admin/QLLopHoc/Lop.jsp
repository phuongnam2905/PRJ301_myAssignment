<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Lop_DTO"%>
<%@page import="Model.*"%>
<!DOCTYPE html>

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
                        <h2>Thêm mới lớp học</h2>
                        <form action="/QLSV/Lop_servlet" method="POST" role="form">
                            <legend></legend>

                            <div class="form-group">
                                <label for="">Tên lớp</label>
                                <input type="text" name="tenlop" class="form-control" id="" placeholder="Thêm tên lớp">
                                <label for="">Sỉ số</label>
                                <input type="text" name="siso" class="form-control" id="" placeholder="Thêm tên lớp">
                            </div>



                            <button type="submit" class="btn btn-primary">Thêm mới</button>
                        </form>
                        <form action="/QLSV/Lop_servlet" method="POST" role="form">
                            <legend>Tìm kiếm</legend>

                            <div class="form-group">
                                <label for="">Nhập thông tin cần tìm</label>
                                <input type="text" name="search" class="form-control" id="" placeholder="Nhập tên lớp hoặc sỉ số">
                            </div>
                            <button type="submit" class="btn btn-primary">Tìm</button>
                        </form>
                    </div>
                    <div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Mã lớp</th>
                                    <th>Tên Lớp</th>
                                    <th>Sỉ số</th>
                                    <th>Tùy chọn</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ArrayList<Lop_DTO> list = new Lop_Model().get_all();
                                    for(Lop_DTO items : list)
                                    {
                                %>
                                <tr>
                                    <td><%=items.getLop_ID()%></td>
                                    <td><%=items.getTenLop()%></td>
                                    <td><%=items.getSiSo()%></td>
                                    <td><a href="/QLSV/Admin/QLLopHoc/Sua.jsp?id_lop=<%=items.getLop_ID()%>">Sửa</a>
                                     <a href="/QLSV/Lop_servlet?id_lop=<%=items.getLop_ID()%>">Xóa</a></td>
                        </tr>
                                <% } %>
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



