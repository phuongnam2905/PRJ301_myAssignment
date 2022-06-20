<%-- 
    Document   : check_attendance
    Created on : Jun 21, 2022, 12:43:20 AM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check_attendance</title>
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
        
        
        <table class="table table-bordered w-100">
        <thead>
          <tr>



    <th class="bg-warning" scope="col">INDEX</th>
    <th class="bg-warning" scope="col">IMAGE</th>
    <th class="bg-warning" scope="col">NAME</th>
    <th class="bg-warning" scope="col">CODE</th>
    <th class="bg-warning" scope="col">STATUS</th>
    <th class="bg-warning" scope="col">NOTE</th>

   
          
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            
            <td><img class="student_avatar" src="./img/user1.jpg"> </td>
            <td>Nguyen Truong Khanh</td>
            <td>HE150987</td>
            <td>
                
            
               
                <input type="radio" id="one" name="absent" value="1" />
                <label for="one">Absent</label>

               
                <input type="radio" id="two" name="present" checked value="2" />
                <label for="two">Present</label>
            </td>
            <td><input class="text_note" type="text"></td>
            </form>
               
      
            
            <tr>
                <th scope="row">2</th>
                
                <td><img class="student_avatar" src="./img/user2.jpg"> </td>
                <td>quangtthe150986</td>
                <td>HE150986</td>
                <td><form>
                
            
               
                    <input type="radio" id="one" name="absent" value="1" />
                    <label for="one">Absent</label>
    
                   
                    <input type="radio" id="two" name="present" checked value="2" />
                    <label for="two">Present</label>
                   
                </form>
                </td>
                <td> <input class="text_note" type="text"></td>
                
              </tr>




              <tr>
                <th scope="row">3</th>
                
                <td><img class="student_avatar" src="./img/user3.jpg"> </td>
                <td>trungtqhe150985</td>
                <td>HE150985</td>
                <td><form>
                
            
               
                    <input type="radio" id="one" name="absent" value="1" checked />
                    <label for="one">Absent</label>
    
                   
                    <input type="radio" id="two" name="present" value="2" />
                    <label for="two">Present</label>
                   
                </form></td>
                <td> <input class="text_note" type="text"></td>
              
                
              </tr>
              <tr>
                <th scope="row">4</th>
                
                <td><img class="student_avatar" src="./img/user4.jpg"> </td>
                <td>chautvhe150984</td>
                <td>HE150984</td>
                <td><form>
                
            
               
                    <input type="radio" id="one" name="absent" value="1" />
                    <label for="one">Absent</label>
    
                   
                    <input type="radio" id="two" name="present" value="2" checked />
                    <label for="two">Present</label>
                   
                </form>
                </td>
                <td> <input class="text_note" type="text"></td>
                
              </tr>
              <tr>
                <th scope="row">5</th>
                
                <td><img class="student_avatar" src="./img/user5.jpg"> </td>
                <td>hiepttnhe150983</td>
                <td>HE150987</td>
                <td><form>
                
            
               
                    <input type="radio" id="one" name="absent" checked value="1" />
                    <label for="one">Absent</label>
    
                   
                    <input type="radio" id="two" name="present" value="2" />
                    <label for="two">Present</label>
                   
                </form></td>
                <td> <input class="text_note" type="text"></td>
               
                
              </tr>
              <tr>
                <th scope="row">6</th>
                
                <td><img class="student_avatar" src="./img/user6.jpg"> </td>
                <td>vinhtdkhe150982</td>
                <td>hE150982</td>
                <td><form>
                
            
               
                    <input type="radio" id="one" name="absent" checked value="1" />
                    <label for="one">Absent</label>
    
                   
                    <input type="radio" id="two" name="present" value="2" />
                    <label for="two">Present</label>
                   
                </form>
               </td>
               <td> <input class="text_note" type="text"></td>
                
              </tr>
          
        </tbody>
      </table>
    </body>
</html>
