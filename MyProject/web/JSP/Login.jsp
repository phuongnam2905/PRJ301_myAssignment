<%-- 
    Document   : Home
    Created on : Jun 9, 2022, 9:45:15 AM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/main.css">
    </head>
    <body>
        <div class="container">
<div class="row">

            <div class="col-md-8">

                <h1><span>FPT University Academic Portal</span>
                </h1>

            </div>
            <div class="col-md-4">
                <table>
                    <tbody><tr>
                        <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>

                    </tr>
                    <tr>
                        <td><a href="https://apps.apple.com/app/id1527723314">
                            <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store"></a></td>
                        <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                            <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store"></a></td>

                    </tr>
                </tbody></table>
            </div>
        </div>
</div>
<br>
<div class="row">
   
    <div class="col-md-6 offset-3">
        <div style="border: solid 1px #ccc; height: 100px;">
            <fieldset>
                <legend style="border-radius: 10%;"><span class=" label label-default  btn-warning"><b style="color: white">Sinh viên, Giảng viên, Cán bộ ĐH-FPT</b></span></legend>
                <br>
                <div id="loginform" style="margin-top: -15px; padding-top: 10px; vertical-align: central">
                    <center>

                        <div class="row">
                            <div class="col-sm-4">

                                <select name="ctl00$mainContent$ddlCampus" onchange="javascript:setTimeout('__doPostBack(\'ctl00$mainContent$ddlCampus\',\'\')', 0)" id="ctl00_mainContent_ddlCampus" class="btn btn-default">
<option selected="selected" value="">Select Campus</option>
<option value="3">FU-Hòa Lạc</option>
<option value="4">FU-Hồ Chí Minh</option>
<option value="5">FU-Đà Nẵng</option>
<option value="6">FU-Cần Thơ</option>
<option value="7">FU-Quy Nhơn</option>

</select>

                            </div>
                            <div class="col-sm-4">
                                <button type="button" class="btn btn-primary">LOGIN</button>
                            </div>
                            <span id="ctl00_mainContent_lblMessage" class="information"></span>
                        </div>

                        <br>

                    </center>
                </div>
            </fieldset>
        </div>
    </div>
</div>

    </body>
</html>
