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
        
     <div class="group-box">
                            <div>
                                <%
                                    HocSinh_DTO sv1 = new HocSinh_DTO();
                                    if (session.getAttribute("loged") != null) {
                                        sv1 = (HocSinh_DTO) session.getAttribute("loged");
                                    }
                                    ArrayList<TKB_DTO> list = new TKB_Model().watch(String.valueOf(sv1.getID_HS()));
                                    if (list == null) {
                                %><h2>Không có l?ch d?y</h2><%
                                } else {


                                %>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Ngày d?y</th>
                                            <th>Giáo viên d?y</th> 
                                            <th></th>
                                            <th>Môn h?c</th>
                                            <th></th>
                                            <th>Bu?i d?y</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <%                                    for (TKB_DTO items : list) {
                                        %>

                                        <%
                                        %>
                                        <tr class="text-center">
                                            <td><%=items.getNgayHoc()%></td>
                                            <td><%=items.getHS_id()%></td>
                                            <td></td>
                                            <td><%=items.getMon_id()%></td>
                                            <td></td>
                                            <td><%=items.getBuoiDay()%></td>
                                        </tr>


                                
                                <% }
                                %></tbody>
                                    </table><%
                                    }%>
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
  <p>Trang qu?n lý sinh viên</p>
</footer>

</body>
</html>










   