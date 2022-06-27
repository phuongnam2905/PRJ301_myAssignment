<%-- 
    Document   : Markreport
    Created on : Jun 28, 2022, 1:10:27 AM
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
        <table class="table table-bordered w-25 h-25">
        <thead>
          <tr>

<div class="bg-primary">
    <th class="bg-warning" scope="col">GRADE CATEGORY</th>
    <th class="bg-warning" scope="col">GRADE ITEM</th>
    <th class="bg-warning" scope="col">WEIGHT</th>
    <th class="bg-warning" scope="col">VALUE</th>
    <th class="bg-warning" scope="col">COMMENT</th>

</div>
            </th>
          
          </tr>
        </thead>
        <tbody>
         
            <tr>
                <td rowspan="3">Assignment</td>
                <td>Assignment 1</td>
                <td>15.0 %</td>
                <td>7</td>
                <td></td>
            </tr>
            <tr>
                <td>Assignment 2</td>
                <td>15.0 %</td>
                <td>7</td>
                <td></td>
            </tr>
            <tr>
                <td>Total</td>
                <td>30.0 %</td>
                <td>7</td>
                <td></td>
            </tr>

            <tr>
                <td rowspan="4">Progress Test </td>
                <td>Progress Test 1</td>
                <td>10.0 %</td>
                <td>6.3</td>
                <td></td>
            </tr>
            <tr>
                <td>Progress Test 2</td>
                <td>10.0 %</td>
                <td>6</td>
                <td></td>
            </tr>
            <tr>
                <td>Progress Test 3</td>
                <td>10.0 %</td>
                <td>5.7</td>
                <td></td>
            </tr>
            <tr>
                <td>Total</td>
                <td>30.0 %</td>
                <td>6</td>
                <td></td>
            </tr>

            <tr>
                <td rowspan="2">Final Exam </td>
                <td>Final Exam</td>
                <td>40.0 %</td>
                <td>5.5</td>
                <td></td>
            </tr>
            <tr>
                <td>Total</td>
                <td>40.0 %</td>
                <td>5.5</td>
                <td></td>
            </tr>

            <tr>
                <td rowspan="2">Final Exam Resit </td>
                <td>Final Exam Resit</td>
                <td>15.0 %</td>
                <td>7</td>
                <td></td>
            </tr>
            <tr>
                <td>Total</td>
                <td>15.0 %</td>
                <td>7</td>
                <td></td>
            </tr>
            
         
          
        </tbody>
        <tfoot><tr><td rowspan="2">Course total</td><td style="font-weight: bold;">AVERAGE</td><td colspan="3" style="font-weight: bold;">6.1</td></tr><tr><td style="font-weight:bold">Status</td><td colspan="3"><font color="Green" style="font-weight:bold">Passed</font></td></tr></tfoot>
      </table>
    </body>
</html>
