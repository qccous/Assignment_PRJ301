<%-- 
    Document   : Home.jsp
    Created on : Jun 26, 2022, 3:47:11 PM
    Author     : Kuyet
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  %>
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
                <a class="navbar-brand" href="Home">Schedule</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Manager Admin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="checkAttend">Switch to Attendance taking page(For Teacher)</a>
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
        <h1>Activities for student (HE${user.getId()})</h1>
        <h3>Select a term, course ...</h3>
        <div class="container-fluid">
            <div class="timetable-img text-center">
                <img src="img/content/timetable.png" alt="">
            </div>
            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr class="bg-light-gray">
                            <th class="text-uppercase" rowspan="2">
                                YEAR  <select>
                                    <c:forEach var = "i" begin = "2019" end = "2022">
                                        <option>${i}</option>
                                    </c:forEach>
                                </select><BR><br>
                                <form id="form" action="Home" method="post" >
                                    WEEK  <select onchange="submit()" name="weekid">
                                        <c:forEach var = "w" items="${weekly}">
                                            <option ${w.getId()==selectedweek? "selected" :""} value="${w.getId()}">${w.getWeekTime()}</option>
                                        </c:forEach>
                                    </select>
                                </form>
                            </th>
                            <th class="text-uppercase">Monday</th>
                            <th class="text-uppercase">Tuesday</th>
                            <th class="text-uppercase">Wednesday</th>
                            <th class="text-uppercase">Thursday</th>
                            <th class="text-uppercase">Friday</th>
                            <th class="text-uppercase">Saturday</th>
                            <th class="text-uppercase">Sunday</th>
                        </tr>
                        <tr>
                            <c:forEach var="d" items="${dates}">
                                <th>${d}</th>
                                </c:forEach>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${slots}" var="slot">
                            <tr>
                                <td class="align-middle">Slot ${slot.id}
                                </td>
                                <c:choose>
                                    <c:when test="${map.containsKey(slot.id)}">
                                        <c:forEach items="${days}" var="day">
                                            <c:choose>
                                                <c:when test="${map.get(slot.id).containsKey(day)}">
                                                    <td>
                                                        <div ><b>${map.get(slot.id).get(day).subject}</b>  </div>
                                                        <div>${map.get(slot.id).get(day).className}</div>
                                                        (${slot.time}) <span style="color: ${map.get(slot.id).get(day).attend==1?"green":map.get(slot.id).get(day).attend==2?"unset":"red"}" >( ${map.get(slot.id).get(day).attend==2?"Not yet":map.get(slot.id).get(day).attend==1?"attend":"absent"})</span>

                                                    </td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td>-</td>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </c:otherwise>
                                </c:choose>

                            </tr>

                        </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <script>
        const form = document.getElementById("form");
        function submit() {
            form.submit();
        }
        ;
    </script>
</html>
