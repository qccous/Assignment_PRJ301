<%-- 
    Document   : Home.jsp
    Created on : Jun 26, 2022, 3:47:11 PM
    Author     : Kuyet
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--begin of menu-->
     
        <h1 style="text-align: center">Timetable</h1>
        <h3>Select a term, course ...</h3>
        </select><BR><br>
                                User  <select>
                                        <option>Lecture</option>
                                        <option>Student</option>
                                </select>
        <div class="container">
            <div class="timetable-img text-center">
                <img src="img/content/timetable.png" alt="">
            </div>
            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr class="bg-light-gray">
                            <th class="text-uppercase" rowspan="2">
                                </select><BR><br>
                                WEEK  <select>
                                    <c:forEach var = "i" begin = "1" end = "5">
                                        <option value="1">03/01 To 09/01</option>
                                    </c:forEach>
                                </select>
                            </th>
                            <th class="text-uppercase">Monday</th>
                            <th class="text-uppercase">Tuesday</th>
                            <th class="text-uppercase">Wednesday</th>
                            <th class="text-uppercase">Thursday</th>
                            <th class="text-uppercase">Friday</th>
                            <th class="text-uppercase">Saturday</th>
                  
                        </tr>
                        <tr>
                            <th>03/01</th>
                            <th>04/01</th>
                            <th>05/01</th>
                            <th>06/01</th><!-- comment -->
                            <th>07/01</th>
                            <th>08/01</th><!-- comment -->
                     
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="align-middle">Slot1</br>7:30-9:00</td>
                            <td>
                                <span class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16 xs-font-size13">PRJ301</span>
                                <div class="margin-10px-top font-size14">- SE1610</div>
                                <div class="font-size13 text-light-gray" style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRN211</span>
                                <div class="margin-10px-top font-size14">- SE1610</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>

                            <td>
                                <span class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRJ301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRN211</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRJ301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRN211</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot2</br>9:10-10:40</td>
                            <td>
                                <span class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRJ301</span>
                                <div class="margin-10px-top font-size14">- SE1610</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <span class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRN211</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td class="bg-light-gray">

                            </td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot3</br>10:50-12:20</td>
                            <td>
                                <span class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRJ301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWR302</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWR302</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                               <div class="font-size13 text-light-gray"style="color: red; text-decoration: underline">(Not yet)</div>
                            </td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot 4</br>12:50-14:20</td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <span class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">Art</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWR302</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <span class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWR302</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: red; text-decoration: underline">(Not yet)</div>
                            </td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot 5</br>14:30-15:00</td>
                            <td>
                                <span class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWT301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <span class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWR302</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">SWR302</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: green; text-decoration: underline">(Present)</div>
                            </td>
                            <td>
                                <span class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom  font-size16  xs-font-size13">PRJ301</span>
                                <div class="margin-10px-top font-size14">- SE1606</div>
                                <div class="font-size13 text-light-gray"style="color: red; text-decoration: underline">(Not yet)</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>