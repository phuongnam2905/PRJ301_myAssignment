<%-- 
    Document   : list
    Created on : Jun 20, 2022, 8:20:32 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ListStudent</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/main.css">
       
    </head>
    <body>
       <div class="control">
    <a href="">Home</a>
    <a href="">Take Attendance</a>
    <a href="">Add</a>
    <a href="">Logout</a>
   </div>
    

  <h3>
    <span id="mainContent_takeattendance">Take attendance</span>
  </h3>

  <p class="maincontent1">
    Attendance for PRJ301 at slot 3 on Tuesday 21/06/2022 at room DE-C205. this is the session number 15 of the course. 
    </p>


    <table class="table table-bordered w-100">
        <thead>
          <tr>



    <th class="bg-warning" scope="col">INDEX</th>
    <th class="bg-warning" scope="col">GROUP</th>
    <th class="bg-warning" scope="col">IMAGE</th>
    <th class="bg-warning" scope="col">MEMBER</th>
    <th class="bg-warning" scope="col">CODE</th>
    <th class="bg-warning" scope="col">SURNAME</th>
    <th class="bg-warning" scope="col">MIDDLE NAME</th>
    <th class="bg-warning" scope="col">GIVEN NAME</th>
    <th class="bg-warning" scope="col">ABSENT</th>
    <th class="bg-warning" scope="col">PRESENT</th>
          
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>SE1613</td>
            <td><img class="student_avatar" src=""> </td>
            <td>khanhntkhe150987</td>
            <td>HE150987</td>
            <td>Khanh</td>
            <td>Kim</td>
            <td>Nguyen Thi</td>
            <td>
            <p>Absent</p><br>
            <input type="radio" value="" name="">
          </td>
          <td>
            <p>Present</p><br>
            <input type="radio" value="" name="">
          </td>
            <tr>
                <th scope="row">2</th>
                <td>SE1613</td>
                <td><img class="student_avatar" src=""> </td>
                <td>quangttHe150986</td>
                <td>HE150986</td>
                <td>Quang</td>
                <td>Thanh</td>
                <td>Tran</td>
                <td>
                  <p>Absent</p><br>
                  <input type="radio" value="" name="">
                </td>
                <td>
                  <p>Present</p><br>
                  <input type="radio" value="" name="">
                </td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>SE1613</td>
                <td><img class="student_avatar" src=""> </td>
                <td>trungtqhe150985</td>
                <td>HE150985</td>
                <td>Trung</td>
                <td>Quang</td>
                <td>Tran</td>
                <td>
                  <p>Absent</p><br>
                  <input type="radio" value="" name="">
                </td>
                <td>
                  <p>Present</p><br>
                  <input type="radio" value="" name="">
                </td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>SE1613</td>
                <td><img class="student_avatar" src=""> </td>
                <td>chautvhe150984</td>
                <td>HE150984</td>
                <td>Chau</td>
                <td>Viet</td>
                <td>Tran</td>
                <td>
                  <p>Absent</p><br>
                  <input type="radio" value="" name="">
                </td>
                <td>
                  <p>Present</p><br>
                  <input type="radio" value="" name="">
                </td>
              </tr>
              <tr>
                <th scope="row">5</th>
                <td>SE1613</td>
                <td><img class="student_avatar" src=""> </td>
                <td>hiepttnhe150983</td>
                <td>HE150987</td>
                <td>Hiep</td>
                <td>Ngoc</td>
                <td>Truong Thi</td>
                <td>
                  <p>Absent</p><br>
                  <input type="radio" value="" name="">
                </td>
                <td>
                  <p>Present</p><br>
                  <input type="radio" value="" name="">
                </td>
              </tr>
              <tr>
                <th scope="row">6</th>
                <td>SE1613</td>
                <td><img class="student_avatar" src=""> </td>
                <td>vinhtdkhe150982</td>
                <td>HE150982</td>
                <td>Vinh</td>
                <td>Duc</td>
                <td>Tran</td>
                <td>
                  <p>Absent</p><br>
                  <input type="radio" value="" name="">
                </td>
                <td>
                  <p>Present</p><br>
                  <input type="radio" value="" name="">
                </td>
              </tr>
          
        </tbody>
      </table>
      <div class="save">
      <input type="button" value="Save" name="submit">
    </div>
    </body>
</html>
