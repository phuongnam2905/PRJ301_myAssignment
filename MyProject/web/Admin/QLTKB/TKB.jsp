<%@page import="java.util.ArrayList"%>
<%@page import="DTO.*"%>
<%@page import="Model.*"%>
<!DOCTYPE html>



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
		<div class="col-sm-9">
                    <div>
                        <h2>Sắp lịch học cho học sinh</h2>
                        <form action="/QLGV/TKB_servlet" method="POST" role="form">
                        <div class="form-group">
                            <label for="">Chọn học sinh</label>
                            <select class="form-control" name="idgv" id="idmon" onchange="chonhs()">
                                <%
                                    ArrayList<HocSinh_DTO> ds_lop = new HocSinh_Model().get_all();
                                    for (HocSinh_DTO items : ds_lop) {
                                %>
                                <option value="<%=items.getID_HS()%>"><%=items.getTenHS()%> Lớp <%=items.getLop_id()%></option>
                                <% } %>
                            </select>
                            <label for="">Chọn môn</label>
                            <select class="form-control" name="idmon">
                                <%
                                    ArrayList<MonHoc_DTO> dsmon = new Mon_Model().get_all();
                                    for (MonHoc_DTO items : dsmon) {
                                %>
                                <option value="<%=items.getMon_ID()%>"><%=items.getTenMon()%></option>
                                <% } %>
                            </select>
                            <label for="">Chọn buổi học</label>
                            <select class="form-control" name="buoiday">
                                <option value="S">Sáng</option>
                                <option value="C">Chiều</option>
                            </select>
                            <label for="">Chọn ngày học</label>
                            <input type="date" name="ngayday" />
                        </div>
                            <button type="submit" class="btn btn-primary">Thêm mới</button>
                       </form>
                            <form action="/QLSV/TKB_servlet" method="POST" role="form">
                            <legend>Lọc theo học sinh</legend>

                            <div class="form-group">
                                <label for="">Chọn học sinh</label>
                                <select class="form-control" name="search" id="idmon">
                                <%
                                    
                                    for (HocSinh_DTO items : ds_lop) {
                                %>
                                <option value="<%=items.getID_HS()%>"><%=items.getTenHS()%> Lớp <%=items.getLop_id()%></option>
                                <% } %>
                            </select>
                            </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Lọc</button>
                        </form>
                        </div>
                        <div>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Ngày dạy</th>
                                        <th>Học sinh học</th>                                       
                                        
                                        <th>Môn học</th>
                                        <th>Buổi học</th>
                                        <th>Tùy chọn</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ArrayList<TKB_DTO> list_bd = new TKB_Model().get_all();
                                        for (TKB_DTO items : list_bd) {
                                    %>
                                    <tr>
                                        <td><%=items.getNgayHoc()%></td>
                                        <td><%=items.getHS_id()%></td>
                                        <td><%=items.getMon_id()%></td>
                                        <td><%=items.getBuoiDay()%></td>
                                        <td><a href="/QLSV/Admin/QLTKB/Sua.jsp?id_tkb=<%=items.getTKB_ID()%>">Sửa</a>
                                            <a href="/QLSV/TKB_servlet?id_tkb=<%=items.getTKB_ID()%>">Xóa</a>
                                        </td>
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



