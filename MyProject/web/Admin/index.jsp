<%-- 
    Document   : index2
    Created on : Dec 2, 2016, 8:20:58 PM
    Author     : TiT_TM
--%>


<!DOCTYPE html>
<html>
      
   <%@include file="../Template/head_admin.jsp" %>
      <%@page pageEncoding="UTF-8"%>

<body>
    
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="../Template/menu_admin.jsp" %>
                
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
                    <li><a href="/QLSV/Admin/QLHocSinh/HocSinh.jsp">Quản lý học sinh</a></li>
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

