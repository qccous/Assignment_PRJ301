<%-- 
    Document   : home
    Created on : Jun 21, 2022, 10:16:39 PM
    Author     : Kuyet
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
        <title>Timetable</title>
    </head>
    <body>
        <div class="wrapper">
            <header>
                <h1>FPT University Timetable</h1>
            </header>
            <div class="button-wrapper">
            </div>
            <div class="grid">
                <table>
                   
                    <thead>
                    <th scope="col">Slot</th>  
                    
                    <th scope="col">Monday </br> </br> 2022-06-20</th>
                    <th scope="col">Tuesday</br> </br> 2022-06-21</th>
                    <th scope="col">Wednesday</br> </br> 2022-06-22</th>
                    <th scope="col">Thursday</br> </br> 2022-06-23</th>
                    <th scope="col">Friday</br> </br> 2022-06-24</th>
                    <th scope="col">Saturday</br> </br> 2022-06-25</th>
                    <th scope="col">Friday</br> </br> 2022-06-26</th>
                    
                    </thead>
                    
                    <tbody>
                        <c:forEach items="${requestScope.slotList}" var="slot">

                            <tr>
                                <th scope="row">${slot.slotId}</br>${slot.fromTime}</th>
                                
                                
                                
                                    <c:forEach items="${requestScope.timetableList}" var="tb">
                                       
                                    
                                    <c:if test="${tb.slotId == slot.slotId}">
                                        <td><span>${tb.subjectId} in class ${tb.classId} (${tb.timetableStatus})</span></td>
                                    </c:if>
                                    <c:if test="${tb.slotId !=slot.slotId}">
                                        <td><span> </span></td>
                                    </c:if>  
                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>


            </div>
        </div>
    </body>
</html>
