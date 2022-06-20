<%-- 
    Document   : login
    Created on : Jun 20, 2022, 10:38:40 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="materialContainer">


        <div class="box">
     
           <div class="title">LOGIN</div>
     
           <div class="input">
              <label for="name">Username</label>
              <input type="text" name="name" id="name">
              <span class="spin"></span>
           </div>
     
           <div class="input">
              <label for="pass">Password</label>
              <input type="password" name="pass" id="pass">
              <span class="spin"></span>
           </div>
     
           <div class="button login">
              <button><span>GO</span> <i class="fa fa-check"></i></button>
           </div>
     
           <a href="" class="pass-forgot">Forgot your password?</a>
     
        </div>
     
     
     </div>
    </body>
</html>
