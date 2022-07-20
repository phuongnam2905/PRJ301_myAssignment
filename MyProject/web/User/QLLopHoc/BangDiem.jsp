<%@page import="Model.*"%>
<%@page import="DTO.*"%>
<%@page import="java.util.ArrayList"%>



<!DOCTYPE html>
<html lang="en">
<%@include file="/Template/head_user.jsp" %>

<body>

    <%@include file="/Template/menu_user.jsp"%>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <%@include file="/Template/DanhMuc.jsp" %>
    <div class="col-sm-8 text-left"> 
             <%
    HocSinh_DTO hs = new HocSinh_DTO();
    if(session.getAttribute("loged")!=null)
        hs = (HocSinh_DTO)session.getAttribute("loged");

%>
    <div>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Tên học sinh</th>
                                        <th>Lớp</th>
                                        <th>Môn học</th>
                                        <th>Điểm</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ArrayList<BangDiem_DTO> list = new BangDiem_Model().get_by_id(String.valueOf(hs.getID_HS()));
                                        for(BangDiem_DTO items:list)
                                        {
                                    %>
                                    <tr>
                                        <td><%=items.getHS_id()%></td>
                                        <td><%=items.getLop_id()%></td>
                                        <td><%=items.getMon_id()%></td>
                                        <td><%=items.getDiem()%></td>
                                       
                                    </tr>
                                    <% }
                                    %>
                                    
                                </tbody>
                            </table>
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










    <%@page pageEncoding="UTF-8"%>