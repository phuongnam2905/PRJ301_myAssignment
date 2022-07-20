


<%@page import="Model.Lop_Model"%>
<%@page import="DTO.Lop_DTO"%>
<%@page import="DTO.Lop_DTO"%>
<%@page import="Model.HocSinh_Model"%>
<%@page import="DTO.HocSinh_DTO"%>
<%@page import="java.util.ArrayList"%>
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
		<div>
                        <h2>Thêm mới sinh viên</h2>
                        <form action="/QLSV/HocSinh_servlet" method="POST" role="form">
                            <legend></legend>

                            <div class="form-group">
                                <label for="">Tên sinh viên</label>
                                <input type="text" name="tensv" class="form-control" id="" placeholder="Thêm tên sinh viên">
                                <label for="">Số điện thoại</label>
                                <input type="text" name="sdt" class="form-control" id="" placeholder="Thêm sdt">
                                <label for="">Địa chỉ</label>
                                <input type="text" name="diachi" class="form-control" id="" placeholder="Thêm địa chỉ">
                                <label for="">Tài khoản</label>
                                <input type="text" name="taikhoan" class="form-control" id="" placeholder="Thêm tài khoản">
                                <label for="">Mật khẩu</label>
                                <input type="password" name="matkhau" class="form-control" id="" placeholder="Thêm mật khẩu">
                                <label for="">Cấp độ</label>
                                <select class="form-control" name="capdo">
                                    <option value="1">Admin</option>
                                    <option value="2">User</option>
                                </select>
                                <label for="">Ngày sinh</label>
                                <input type="date" name="ngaysinh" class="form-control" id="" placeholder="Nhập ngày sinh">
                                <label for="">Danh sách lớp</label>
                                <select name="lopid" class="form-control">
                                     <%
                                         
                                    ArrayList<Lop_DTO> list_lop = new Lop_Model().get_all();
                                    for(Lop_DTO items : list_lop)
                                    {
                                
                                     %>
                                     <option value="<%=items.getLop_ID()%>"><%=items.getTenLop()%></option>
                                     <% } %>
                                </select>
                                <label for="">Điểm</label>
                                <input type="number" name="diemtb" class="form-control" id="" placeholder="Nhập điểm">
                            </div>



                            <button type="submit" class="btn btn-primary">Lưu</button>
                        </form>
                        <form action="/QLSV/HocSinh_servlet" method="POST" role="form">
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
                                    <th>Mã sinh viên</th>
                                    <th>Tên sinh viên</th>
                                    <th>Số điện thoạt</th>
                                    <th>Địa chỉ</th>
                                    <th>Tài khoản</th>
                                    <th>Mật Khẩu</th>
                                    <th>Cấp độ</th>
                                    <th>Ngày sinh</th>
                                    <th>Điểm</th>
                                    <th>Lớp</th>
                                    <th>Tùy chọn</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ArrayList<HocSinh_DTO> list = new HocSinh_Model().get_all();
                                    for(HocSinh_DTO items : list)
                                    {
                                %>
                                <tr>
                                    <td><%=items.getID_HS()%></td>
                                    <td><%=items.getTenHS()%></td>
                                    <td><%=items.getSDT()%></td>
                                    <td><%=items.getDiaChi()%></td>
                                    <td><%=items.getTaiKhoan()%></td>
                                    <td><%=items.getMatKhau()%></td>
                                    <td><%=items.getCapDo()%></td>
                                    <td><%=items.getNgaySinh()%></td>
                                    <td><%=items.getDTB()%></td>
                                    <td><%=items.getLop_id()%></td>
                                    <td><a href="/QLSV/Admin/QLSinhVien/Sua.jsp?id_hs=<%=items.getID_HS()%>">Sửa</a>
                                     <a href="/QLSV/HocSinh_servlet?id_hs=<%=items.getID_HS()%>">Xóa</a></td>
                        </tr>
                                <% } %>
                            </tbody>
                        </table>
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

