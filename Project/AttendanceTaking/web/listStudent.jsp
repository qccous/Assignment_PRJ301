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
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">   
            <div class="container">
                <a class="navbar-brand" href="home">Schedule</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Manager Admin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Hello Alias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath }/login?action=logout">Logout</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Login</a>
                        </li>
                    </ul>
                    </form>
                </div>
            </div>
        </nav>
        <h1>Activities for ...(Sonnt)</h1>
        <div><h4>Select a class <select>
                    <c:forEach var = "i" begin = "1" end = "4">
                        <option>SE160${i}</option>
                    </c:forEach>
                </select> </h4></div>
        <div class="container">
            <div class="timetable-img text-center">
                <img src="img/content/timetable.png" alt="">
            </div>
            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr class="bg-light-gray">
                            <th class="text-uppercase">Fullname</th>
                            <th class="text-uppercase">Student Code</th>
                            <th class="text-uppercase">Image</th>
                            <th class="text-uppercase">Attendance</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="align-middle">Nguyen Tung Lam</td>
                            <td>

                                <div class="font-size13 text-light-gray">HE121365</div>
                            </td>
                            <td>
                                <<img src="src" alt="alt"/>
                            </td>

                            <td>
                                <input type="radio" name="1" checked />attend
                                <input type="radio" name="1" />absent
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">Nguyen Tung Lam</td>
                            <td>

                                <div class="font-size13 text-light-gray">HE121365</div>
                            </td>
                            <td>
                                <<img src="src" alt="alt"/>
                            </td>

                            <td>
                                <input type="radio" name="2" checked />attend
                                <input type="radio" name="2" />absent
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">Nguyen Van Son</td>
                            <td>

                                <div class="font-size13 text-light-gray">HE142345</div>
                            </td>
                            <td>
                                <<img src="src" alt="alt"/>
                            </td>

                            <td>
                                <input type="radio" name="4" checked />attend
                                <input type="radio" name="4" />absent
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">Nguyen Nhat Nam</td>
                            <td>

                                <div class="font-size13 text-light-gray">HE154565</div>
                            </td>
                            <td>
                                <<img src="src" alt="alt"/>
                            </td>

                            <td>
                                <input type="radio" name="5" checked />attend
                                <input type="radio" name="5" />absent
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle">Luong Huyen Trang</td>
                            <td>

                                <div class="font-size13 text-light-gray">HE166365</div>
                            </td>
                            <td>
                                <<img src="src" alt="alt"/>
                            </td>

                            <td>
                                <input type="radio" name="6" checked />attend
                                <input type="radio" name="6" />absent
                            </td>
                        </tr>


                    </tbody>
                </table>
            </div>
            <div class="row justify-content-center">
                <div style="margin-left: 68px" class="col-3">
                    <button style="width: 100px" type="button" class="btn btn-primary">Edit</button>

                    <button style="margin-left: 12px;width: 100px" type="button" class="btn btn-primary">Save</button>
                </div>
            </div>

        </div>
    </body>
</html>