<%-- 
    Document   : Schedule
    Created on : Jun 18, 2022, 12:50:20 AM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/main.css">
    </head>
    <body>
        <h2>Activities for
        <span id="ctl00_mainContent_lblStudent">NamTPHE151430 (Trần Phương Nam)</span></h2>
    <p>
        <b>Note</b>: These activities do not include extra-curriculum activities, such as
        club activities ...
    </p>
    <p>
        <b>Chú thích</b>: Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa,
        ví dụ như hoạt động câu lạc bộ ...
    </p>
    <table class="table table-bordered">
        <thead>
          <tr>
            <th rowspan="2" class="bg-warning">
                <span class="auto-style1"><strong>Year</strong></span>
                <select name="ctl00$mainContent$drpYear" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpYear\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpYear">
<option value="2019">2019</option>
<option value="2020">2020</option>
<option selected="selected" value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>

</select>
                <br />
                Week
                <select name="ctl00$mainContent$drpSelectWeek" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpSelectWeek\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpSelectWeek">
<option value="1">04/01 To 10/01</option>
<option value="2">11/01 To 17/01</option>
<option selected="selected" value="3">18/01 To 24/01</option>
<option value="4">25/01 To 31/01</option>
<option value="5">01/02 To 07/02</option>
<option value="6">08/02 To 14/02</option>
<option value="7">15/02 To 21/02</option>
<option value="8">22/02 To 28/02</option>
<option value="9">01/03 To 07/03</option>
<option value="10">08/03 To 14/03</option>
<option value="11">15/03 To 21/03</option>
<option value="12">22/03 To 28/03</option>
<option value="13">29/03 To 04/04</option>
<option value="14">05/04 To 11/04</option>
<option value="15">12/04 To 18/04</option>
<option value="16">19/04 To 25/04</option>
<option value="17">26/04 To 02/05</option>
<option value="18">03/05 To 09/05</option>
<option value="19">10/05 To 16/05</option>
<option value="20">17/05 To 23/05</option>
<option value="21">24/05 To 30/05</option>
<option value="22">31/05 To 06/06</option>
<option value="23">07/06 To 13/06</option>
<option value="24">14/06 To 20/06</option>
<option value="25">21/06 To 27/06</option>
<option value="26">28/06 To 04/07</option>
<option value="27">05/07 To 11/07</option>
<option value="28">12/07 To 18/07</option>
<option value="29">19/07 To 25/07</option>
<option value="30">26/07 To 01/08</option>
<option value="31">02/08 To 08/08</option>
<option value="32">09/08 To 15/08</option>
<option value="33">16/08 To 22/08</option>
<option value="34">23/08 To 29/08</option>
<option value="35">30/08 To 05/09</option>
<option value="36">06/09 To 12/09</option>
<option value="37">13/09 To 19/09</option>
<option value="38">20/09 To 26/09</option>
<option value="39">27/09 To 03/10</option>
<option value="40">04/10 To 10/10</option>
<option value="41">11/10 To 17/10</option>
<option value="42">18/10 To 24/10</option>
<option value="43">25/10 To 31/10</option>
<option value="44">01/11 To 07/11</option>
<option value="45">08/11 To 14/11</option>
<option value="46">15/11 To 21/11</option>
<option value="47">22/11 To 28/11</option>
<option value="48">29/11 To 05/12</option>
<option value="49">06/12 To 12/12</option>
<option value="50">13/12 To 19/12</option>
<option value="51">20/12 To 26/12</option>
<option value="52">27/12 To 02/01</option>

</select>
<div class="bg-primary">
    <th class="bg-warning" scope="col">MON 17/01</th>
    <th class="bg-warning" scope="col">TUE 18/01</th>
    <th class="bg-warning" scope="col">WED 19/01</th>
    <th class="bg-warning" scope="col">THU 20/01</th>
    <th class="bg-warning" scope="col">FRI 21/01</th>
    <th class="bg-warning" scope="col">SAT 22/01</th>
    <th class="bg-warning" scope="col">SUN 23/01</th>
</div>
            </th>
          
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">Slot 1</th>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(7:00-8:30)</span><br/></td>
            <td>-</td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(7:00-8:30)</span><br/></td>
            <td>-</td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(7:00-8:30)</span><br/></td>
            <td>-</td>
            <td>-</td>
          </tr>
          <tr>
            <th scope="row">Slot 2</th>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(08:45-10:15)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(08:45-10:15)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(08:45-10:15)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(08:45-10:15)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>MAS291-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(08:45-10:15)</span><br/></td>

            <td>-</td>
            <td>-</td>
           
          </tr>
          <tr>
            <th scope="row">Slot 3</th>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>JPD123-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:30-12:00)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>JPD123-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:30-12:00)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>JPD123-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:30-12:00)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>JPD123-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:30-12:00)</span><br/></td>
            <td><a class="subject" href='../Schedule/ActivityDetail.aspx?id=93475'>JPD123-<a style="text-decoration: none" label label-warning' href='http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=gXpbVGLXcG5l8LKF%2bLP6yA%3d%3d&SessionNo=iU6XsBAm8gKSVq0zGwPi7A%3d%3d' target='_blank'>View Materials</a><br/> at B203 <a > <a style="text-decoration:none" class='label label-primary' href='https://fu.edunext.vn?CampusCode=CT&subjectCode=MAS291&semester=Spring2021&ClassName=SE1502&SessionN0=7'>-EduNext </a><br/>(<font color=red>Not yet</font>)<br/><span class='label label-success'>(10:30-12:00)</span><br/></td>
            <td>-</td>
            <td>-</td>
           

          </tr>
          <tr>
            <th scope="row">Slot 4</th>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
          </tr>
          <tr>
            <th scope="row">Slot 5</th>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
          </tr>
          <tr>
            <th scope="row">Slot 6</th>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
          </tr>
          <tr>
            <th scope="row">Slot 7</th>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
          </tr>
          <tr>
            <th scope="row">Slot 8</th>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
          </tr>
          
        </tbody>
      </table>
    </body>
</html>
