<%-- 
    Document   : newjsp
    Created on : Jun 21, 2022, 2:31:54 AM
    Author     : Kuyet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
                        <tbody>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <div>

                                        <style>
                                            div.online-indicator {
                                                display: inline-block;
                                                width: 15px;
                                                height: 15px;
                                                margin-right: 5px;
                                                background-color: #0fcc45;
                                                border-radius: 50%;
                                                position: relative;
                                            }

                                            span.blink {
                                                display: block;
                                                width: 15px;
                                                height: 15px;
                                                background-color: #0fcc45;
                                                opacity: 0.7;
                                                border-radius: 50%;
                                                animation: blink 1s linear infinite;
                                            }

                                            h3.online-text {
                                                display: inline;
                                                font-family: 'Rubik', sans-serif;
                                                font-weight: 400;
                                                text-shadow: 0px 3px 6px rgba(150, 150, 150, 0.2);
                                                position: relative;
                                                cursor: pointer;
                                            }

                                            /*Animations*/

                                            @keyframes blink {
                                                100% {
                                                    transform: scale(2, 2);
                                                    opacity: 0;
                                                }
                                            }
                                        </style>
                                        
                                        <div id="ctl00_mainContent_divNameDay"></div><div id="ctl00_mainContent_divShowDate"></div><div id="ctl00_mainContent_divContent"></div><table>
                                            <thead>
                                                <tr>

                                                    <th rowspan="2">
                                                        <span class="auto-style1"><strong>Year</strong></span>
                                                        <select name="ctl00$mainContent$drpYear" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpYear\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpYear">
                                                            <option value="2019">2019</option>
                                                            <option value="2020">2020</option>
                                                            <option value="2021">2021</option>
                                                            <option selected="selected" value="2022">2022</option>
                                                            <option value="2023">2023</option>

                                                        </select>
                                                        <br />
                                                        Week
                                                        <select name="ctl00$mainContent$drpSelectWeek" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$mainContent$drpSelectWeek\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_mainContent_drpSelectWeek">
                                                            <option value="1">03/01 To 09/01</option>
                                                            <option value="2">10/01 To 16/01</option>
                                                            <option value="3">17/01 To 23/01</option>
                                                            <option value="4">24/01 To 30/01</option>
                                                            <option value="5">31/01 To 06/02</option>
                                                            <option value="6">07/02 To 13/02</option>
                                                            <option value="7">14/02 To 20/02</option>
                                                            <option value="8">21/02 To 27/02</option>
                                                            <option value="9">28/02 To 06/03</option>
                                                            <option value="10">07/03 To 13/03</option>
                                                            <option value="11">14/03 To 20/03</option>
                                                            <option value="12">21/03 To 27/03</option>
                                                            <option value="13">28/03 To 03/04</option>
                                                            <option value="14">04/04 To 10/04</option>
                                                            <option value="15">11/04 To 17/04</option>
                                                            <option value="16">18/04 To 24/04</option>
                                                            <option value="17">25/04 To 01/05</option>
                                                            <option value="18">02/05 To 08/05</option>
                                                            <option value="19">09/05 To 15/05</option>
                                                            <option value="20">16/05 To 22/05</option>
                                                            <option value="21">23/05 To 29/05</option>
                                                            <option value="22">30/05 To 05/06</option>
                                                            <option value="23">06/06 To 12/06</option>
                                                            <option value="24">13/06 To 19/06</option>
                                                            <option selected="selected" value="25">20/06 To 26/06</option>
                                                            <option value="26">27/06 To 03/07</option>
                                                            <option value="27">04/07 To 10/07</option>
                                                            <option value="28">11/07 To 17/07</option>
                                                            <option value="29">18/07 To 24/07</option>
                                                            <option value="30">25/07 To 31/07</option>
                                                            <option value="31">01/08 To 07/08</option>
                                                            <option value="32">08/08 To 14/08</option>
                                                            <option value="33">15/08 To 21/08</option>
                                                            <option value="34">22/08 To 28/08</option>
                                                            <option value="35">29/08 To 04/09</option>
                                                            <option value="36">05/09 To 11/09</option>
                                                            <option value="37">12/09 To 18/09</option>
                                                            <option value="38">19/09 To 25/09</option>
                                                            <option value="39">26/09 To 02/10</option>
                                                            <option value="40">03/10 To 09/10</option>
                                                            <option value="41">10/10 To 16/10</option>
                                                            <option value="42">17/10 To 23/10</option>
                                                            <option value="43">24/10 To 30/10</option>
                                                            <option value="44">31/10 To 06/11</option>
                                                            <option value="45">07/11 To 13/11</option>
                                                            <option value="46">14/11 To 20/11</option>
                                                            <option value="47">21/11 To 27/11</option>
                                                            <option value="48">28/11 To 04/12</option>
                                                            <option value="49">05/12 To 11/12</option>
                                                            <option value="50">12/12 To 18/12</option>
                                                            <option value="51">19/12 To 25/12</option>
                                                            <option value="52">26/12 To 01/01</option>

                                                        </select>
                                                    </th>

                                                    <th align="center">Mon</th>
                                                    <th align="center">Tue</th>
                                                    <th align="center">Wed</th>
                                                    <th align="center">Thu</th>
                                                    <th align="center">Fri</th>
                                                    <th align="center">Sat</th>
                                                    <th align="center">Sun</th>
                                                </tr>
                                                <tr>
                                                    <th align="center">20/06</th>
                                                    <th align="center">21/06</th>
                                                    <th align="center">22/06</th>
                                                    <th align="center">23/06</th>
                                                    <th align="center">24/06</th>
                                                    <th align="center">25/06</th>
                                                    <th align="center">26/06</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr><td>Slot 1 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 2 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 3 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 4 </td><td>-</td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=921295">PRN211-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=n4InBWsubsA3Ztp9N3Ot0A%3d%3d&amp;SessionNo=otr087PrZR6f6b44meJdfw%3d%3d" target="_blank">View Materials</a><br /> at DE-C301 - <a class="label label-default" href="https://meet.google.com/xeq-ozoc-fwn" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=PRN211&amp;semester=Summer2022&amp;ClassName=SE1610-NET&amp;SessionN0=19">-EduNext </a><br />(<font color="red">Not yet</font>)<br /><span class="label label-success">(12:50-14:20)</span><br /></td><td>-</td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=921315">PRN211-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=n4InBWsubsA3Ztp9N3Ot0A%3d%3d&amp;SessionNo=zo6W5ogDesMsd0QdzaFnUA%3d%3d" target="_blank">View Materials</a><br /> at DE-C301 - <a class="label label-default" href="https://meet.google.com/xeq-ozoc-fwn" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=PRN211&amp;semester=Summer2022&amp;ClassName=SE1610-NET&amp;SessionN0=21">-EduNext </a><br />(<font color="red">Not yet</font>)<br /></td><td>-</td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 5 </td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=907957">PRJ301-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=otr087PrZR6f6b44meJdfw%3d%3d" target="_blank">View Materials</a><br /> at DE-C202 <a> <br />(<font color="Green">attended</font>)<br /><span class="label label-success">(14:30-16:00)</span><br /></a></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=921305">PRN211-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=n4InBWsubsA3Ztp9N3Ot0A%3d%3d&amp;SessionNo=xSlZOxVbP058dyJqVHLTPg%3d%3d" target="_blank">View Materials</a><br /> at DE-C301 - <a class="label label-default" href="https://meet.google.com/xeq-ozoc-fwn" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=PRN211&amp;semester=Summer2022&amp;ClassName=SE1610-NET&amp;SessionN0=20">-EduNext </a><br />(<font color="red">Not yet</font>)<br /><span class="label label-success">(14:30-16:00)</span><br /></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=907958">PRJ301-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=xSlZOxVbP058dyJqVHLTPg%3d%3d" target="_blank">View Materials</a><br /> at DE-C202 - <a class="label label-default" href="https://meet.google.com/gkh-fjwj-hgx" target="_blank">Meet URL</a><a> <br />(<font color="red">Not yet</font>)<br /></a></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=921815">SWR302-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=8sZdLpFF7Vpk3D03Vczy4A%3d%3d&amp;SessionNo=xSlZOxVbP058dyJqVHLTPg%3d%3d" target="_blank">View Materials</a><br /> at DE-C301 - <a class="label label-default" href="https://meet.google.com/bcf-ajwj-mma" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=SWR302&amp;semester=Summer2022&amp;ClassName=SE1610-NET&amp;SessionN0=20">-EduNext </a><br />(<font color="red">Not yet</font>)<br /></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=907959">PRJ301-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=GTJiuwxGNDd1MUm4wrFEDA%3d%3d&amp;SessionNo=zo6W5ogDesMsd0QdzaFnUA%3d%3d" target="_blank">View Materials</a><br /> at DE-C202 - <a class="label label-default" href="https://meet.google.com/gkh-fjwj-hgx" target="_blank">Meet URL</a><a> <br />(<font color="red">Not yet</font>)<br /></a></td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 6 </td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=920845">SWT301-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=8voYXgJZt%2f0minCZOaNJAw%3d%3d&amp;SessionNo=otr087PrZR6f6b44meJdfw%3d%3d" target="_blank">View Materials</a><br /> at DE-C303 <a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=SWT301&amp;semester=Summer2022&amp;ClassName=SE1615-NET&amp;SessionN0=19">-EduNext </a><br />(<font color="Green">attended</font>)<br /><span class="label label-success">(16:10-17:40)</span><br /></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=921805">SWR302-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=8sZdLpFF7Vpk3D03Vczy4A%3d%3d&amp;SessionNo=otr087PrZR6f6b44meJdfw%3d%3d" target="_blank">View Materials</a><br /> at DE-C301 - <a class="label label-default" href="https://meet.google.com/bcf-ajwj-mma" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=SWR302&amp;semester=Summer2022&amp;ClassName=SE1610-NET&amp;SessionN0=19">-EduNext </a><br />(<font color="red">Not yet</font>)<br /><span class="label label-success">(16:10-17:40)</span><br /></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=920855">SWT301-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=8voYXgJZt%2f0minCZOaNJAw%3d%3d&amp;SessionNo=xSlZOxVbP058dyJqVHLTPg%3d%3d" target="_blank">View Materials</a><br /> at DE-C303 - <a class="label label-default" href="https://meet.google.com/mei-xfza-tem" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=SWT301&amp;semester=Summer2022&amp;ClassName=SE1615-NET&amp;SessionN0=20">-EduNext </a><br />(<font color="red">Not yet</font>)<br /></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=921825">SWR302-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=8sZdLpFF7Vpk3D03Vczy4A%3d%3d&amp;SessionNo=zo6W5ogDesMsd0QdzaFnUA%3d%3d" target="_blank">View Materials</a><br /> at DE-C301 - <a class="label label-default" href="https://meet.google.com/bcf-ajwj-mma" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=SWR302&amp;semester=Summer2022&amp;ClassName=SE1610-NET&amp;SessionN0=21">-EduNext </a><br />(<font color="red">Not yet</font>)<br /></td><td><a href="https://fap.fpt.edu.vn/Schedule/ActivityDetail.aspx?id=920865">SWT301-</a><a class="label label-warning" href="http://flm.fpt.edu.vn/gui/role/guest/ListScheduleSyllabus?subjectCode=8voYXgJZt%2f0minCZOaNJAw%3d%3d&amp;SessionNo=zo6W5ogDesMsd0QdzaFnUA%3d%3d" target="_blank">View Materials</a><br /> at DE-C303 - <a class="label label-default" href="https://meet.google.com/mei-xfza-tem" target="_blank">Meet URL</a><a> </a><a class="label label-primary" href="https://fu.edunext.vn/?CampusCode=APHL&amp;subjectCode=SWT301&amp;semester=Summer2022&amp;ClassName=SE1615-NET&amp;SessionN0=21">-EduNext </a><br />(<font color="red">Not yet</font>)<br /></td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 7 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                                                <tr><td>Slot 8 </td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>
                                            </tbody>
                                        </table>
                     
    </body>
</html>
