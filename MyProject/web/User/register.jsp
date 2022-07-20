

<!DOCTYPE html>
<html lang="en">
<%@include file="/Template/head_user.jsp" %>

<body>

    <%@include file="/Template/menu_user.jsp"%>
  
<div class="container-fluid text-center">    
  <div class="row content">

    <div class="col-sm-8 text-left"> 
        
       <div class = "group-box">
                <div class="title">Đăng ký mới</div>
                <%
                    if(session.getAttribute("register")!=null)
                    {
                        if(session.getAttribute("register")=="success")
                        {
                %><h2>Đăng ký thành công</h2><%
                        }
                         else
                        {%><h2>Đăng ký không thành công</h2><%}
                    }
                %>
                <div align="center">
                   <form action="/QLSV/HocSinh_servlet" method="POST" role="form">
                            <legend></legend>

                            <div class="form-group">
                                <table>
                                    <tr>
                                        <td><label for="">Tên sinh viên</label></td>
                                    <td><input type="text" name="tengv" class="form-control" id="" placeholder="Thêm tên học sinh"></td></tr>
                                    <tr>
                                    <td><label for="">Số điện thoại</label></td>
                                    <td><input type="text" name="sdt" class="form-control" id="" placeholder="Thêm sdt"></td></tr>
                                    <tr>
                                    <td><label for="">Địa chỉ</label></td>
                                    <td><input type="text" name="diachi" class="form-control" id="" placeholder="Thêm địa chỉ"></td></tr>
                                    <tr>
                                        <tr>
                                    <td><label for="">Ngày sinh</label></td>
                                    <td><input type="date" name="ngaysinh" class="form-control" id="" placeholder="Thêm địa chỉ"></td></tr>
                                    <tr>
                                    <td><label for="">Tài khoản</label></td>
                                    <td><input type="text" name="taikhoan" class="form-control" id="" placeholder="Thêm tài khoản"></td></tr>
                                    <tr>
                                    <td><label for="">Mật khẩu</label></td>
                                    <td><input type="password" name="matkhau" class="form-control" id="" placeholder="Thêm mật khẩu"></td></tr>
                                    <tr>
                                    <td><label for="">Xác nhận mật khẩu</label></td>
                                    <td><input type="password" name="matkhau2" class="form-control" id="" placeholder="xác nhận mật khẩu"></td></tr>
                                    <input type="hidden" name="capdo" value="2"/>
                                    <input type="hidden" name="dk" value="dk"/>
                                </table>
                            </div>



                            <button type="submit" class="btn btn-primary">Đăng ký</button>
                            <button class="btn btn-primary"><a href="/QLSV/index.jsp">Đăng nhập</a></button>
                        </form>
                </div>
            </div>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Trang quản lý sinh viên</p>
</footer>

</body>
</html>














    <%@page contentType="text/html" pageEncoding="UTF-8"%>
   