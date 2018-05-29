<%-- 
    Document   : Stats
    Created on : Feb 28, 2018, 12:28:16 AM
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <link rel="stylesheet" href="css/pulsatingButton.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


        <script src="scripts/fusioncharts.js"></script>
        <script src="scripts/themes/fusioncharts.theme.ocean.js"></script>
        <script src="scripts/themes/fusioncharts.theme.fint.js"></script>

        <title>Review</title>
        <style>
            .w3-theme-l1 {color:#fff !important; background-color:#333333 !important}

            .doumkara
            {
                color:  rgb(236,160,0)
            }

        </style>
    </head>
    <body>
        <%--<c:forEach var="stat" items="${stats}">

        <div class="w3-card">
            <p>${stat.productId}</p>
            <p>${stat.productType}</p>
            <p>${stat.count}</p>
        </div>
        
        





    </c:forEach>--%>

        <%--<p>${avg} out of 5</p>
        <p>total review ${count}</p>
        <p>5 star(%)  ${fivePer}</p>
        <p>4 star(%)  ${fourPer}</p>
        <p>3 star(%)  ${threePer}</p>
        <p>2 star(%)  ${twoPer}</p>
<p>1 star(%)  ${onePer}</p>--%>

        <div class="w3-row w3-black">
            <a href="Rating.jsp" class="w3-bar-item w3-button w3-quarter w3-border-right w3-border-red w3-hover-white" >HOME  <i class="fa fa-mail-reply w3-text-gray" style="font-size:26px"></i></a>
            
            <a href="#" class="w3-bar-item w3-button w3-quarter w3-border-right w3-border-red w3-hover-white" onclick="showProba()" >Probability <i class="fa fa-calendar-check-o w3-text-gray" style="font-size:26px"></i></a>

            <a href="#" class="w3-bar-item w3-button w3-quarter w3-border-right w3-border-red w3-hover-white" onclick="show()" >DATA <i class="fa fa-calendar-check-o w3-text-gray" style="font-size:26px"></i></a>

            <a  class="w3-bar-item w3-button w3-quarter w3-hover-white" onclick="document.getElementById('st').style.display = 'block';document.getElementById('allstats').style.display = 'none';document.getElementById('proba').style.display = 'none'" >CHARTS <img src="images/pie.gif" height="40" width="40"/></a>
        </div>

        <div id="st" class="w3-row w3-theme-l1 w3-animate-bottom" style="display: none">
            <button class="w3-bar-item w3-button w3-quarter tablink" onclick="openCity('Iphone', event)">Iphone</button>
            <button class="w3-bar-item w3-button w3-quarter tablink" onclick="openCity('Samsung', event)">Samsung</button>
            <button class="w3-bar-item w3-button w3-quarter tablink" onclick="openCity('LG', event)">LG</button>
            <button class="w3-bar-item w3-button w3-quarter tablink" onclick="openCity('Sony', event)">Sony</button>
        </div>
        
        
        <section class="w3-row-padding w3-quarter w3-animate-top w3-padding-16" style="position: relative;left: 350px;display: none" id="proba">
            
            <section class="w3-card-4 w3-padding-16">
                <header class="w3-center w3-green" >Probability</header>
                <p style="font-family: cursive;font-size: large"><b>The probability that someone buys an iphone is :<i class="w3-text-red"> ${iphoneproba}</i></b> </p>
                <p style="font-family: cursive;font-size: large"><b>The probability that someone buys a Samsung is : <i class="w3-text-red">${samsungproba}</i></b> </p>
                <p style="font-family: cursive;font-size: large"><b>The probability that someone buys a LG is : <i class="w3-text-red">${lgproba} </i></b></p>
                <p style="font-family: cursive;font-size: large"><b>The probability that someone buys as Sony is : <i class="w3-text-red">${sonyproba}</i> </b></p>
                   <sedction>
                       <header class="w3-center w3-green">Interpretation</header>
                       <p style="font-family: cursive;font-size: large"><b><i class="w3-text-red"> ${name}</i> is more likely to be bought by a customer since it has the largest probability.</b></p>
                       
                   </sedction>
                
            </section>
            
        </section>

        <section class="w3-row-padding w3-animate-zoom " style="display: none;" id="allstats">
            <section class="w3-row-padding">
                <section class="w3-half w3-card-32 w3-dark-gray">
                    <header class="w3-center"><h2><i>Customer review of iPhone</i></h2></header>
                    <p class="w3-center">
                        <c:forEach var = "i" begin = "1" end = "${avg}">

                            <i class="fa fa-star doumkara"></i> 

                        </c:forEach>

                        <c:forEach var = "i" begin = "1" end = "${rest}">
                            <i class="fa fa-star w3-text-white"></i> 
                        </c:forEach>
                        (${count})
                    </p>

                    <p class="w3-center w3-border-bottom w3-hover-sand">${avg} out of 5</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">5 -> ${fivePer}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">4 -> ${fourPer}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">3 -> ${threePer}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">2 -> ${twoPer}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">1 -> ${onePer}%</p>

                    <p class="w3-center w3-red">Total count : ${count}</p>


                </section>

                <section class="w3-half w3-card-32 w3-dark-gray">
                    <header class="w3-center"><h2><i>Customer review of samsung</i></h2></header>
                    <p class="w3-center">
                        <c:forEach var = "i" begin = "1" end = "${avgSam}">

                            <i class="fa fa-star doumkara"></i> 

                        </c:forEach>

                        <c:forEach var = "i" begin = "1" end = "${restSam}">
                            <i class="fa fa-star w3-text-white"></i> 
                        </c:forEach>
                        (${Samcount})
                    </p>

                    <p class="w3-center w3-border-bottom w3-hover-sand">${avgSam} out of 5</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">5 -> ${fivePerSam}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">4 -> ${fourPerSam}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">3 -> ${threePerSam}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">2 -> ${twoPerSam}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">1 -> ${onePerSam}%</p>

                    <p class="w3-center w3-red">Total count : ${Samcount}</p>


                </section>



                <section class="w3-half w3-card-32 w3-dark-gray">
                    <header class="w3-center"><h2><i>Customer review of LG </i></h2></header>
                    <p class="w3-center">
                        <c:forEach var = "i" begin = "1" end = "${avglg}">

                            <i class="fa fa-star doumkara"></i> 

                        </c:forEach>


                        <c:forEach var = "i" begin = "1" end = "${restlg}">
                            <i class="fa fa-star w3-text-white"></i> 
                        </c:forEach>


                        (${lgcount})
                    </p>

                    <p class="w3-center w3-border-bottom w3-hover-sand">${avglg} out of 5</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">5 -> ${fivePerlg}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">4 -> ${fourPerlg}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">3 -> ${threePerlg}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">2 -> ${twoPerlg}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">1 -> ${onePerlg}%</p>

                    <p class="w3-center w3-red">Total count : ${lgcount}</p>


                </section>


                <section class="w3-half w3-card-32 w3-dark-gray">
                    <header class="w3-center"><h2><i>Customer review of Sony</i></h2></header>
                    <p class="w3-center">
                        <c:forEach var = "i" begin = "1" end = "${avgsony}">

                            <i class="fa fa-star doumkara"></i> 

                        </c:forEach>
                        <c:forEach var = "i" begin = "1" end = "${restsony}">
                            <i class="fa fa-star w3-text-white"></i> 
                        </c:forEach>
                        (${sonycount})
                    </p>

                    <p class="w3-center w3-border-bottom w3-hover-sand">${avgsony} out of 5</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">5 -> ${fivePersony}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">4 -> ${fourPersony}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">3 -> ${threePersony}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">2 -> ${twoPersony}%</p>
                    <p class="w3-center w3-border-bottom w3-hover-sand">1 -> ${onePersony}%</p>

                    <p class="w3-center w3-red">Total count : ${sonycount}</p>


                </section>
            </section>
        </section>


        <div id="Iphone" class="w3-container city" style="display:none">
            <div class="w3-row">
                <div id="iphoneChartPie" class="w3-half w3-padding"></div>
                <div id="iphoneChartCol" class="w3-half w3-padding"></div>
            </div>

        </div>

        <div id="Samsung" class="w3-container city" style="display:none">
            <div class="w3-row w3-margin-top">
                <div id="samChartPie" class="w3-half w3-padding"></div>
                <div id="samChartCol" class="w3-half w3-padding"></div>
            </div>
        </div>

        <div id="LG" class="w3-container city" style="display:none">
            <div class="w3-row w3-margin-top">
                <div id="lgChartPie" class="w3-half w3-padding"></div>
                <div id="lgChartCol" class="w3-half w3-padding"></div>
            </div>
        </div>

        <div id="Sony" class="w3-container city" style="display:none">
            <div class="w3-row w3-margin-top">
                <div id="sonyChartPie" class="w3-half w3-padding"></div>
                <div id="sonyChartCol" class="w3-half w3-padding"></div>
            </div>
        </div>






        <%@page import="fusioncharts.FusionCharts" %>

        <%--        
        Create the chart - Column 2D Chart with data given in constructor parameter 
        Syntax for the constructor -
        new FusionCharts("type of chart", 
        "unique chart id", 
        "width of chart", 
        "height of chart", 
        "div id to render the chart", 
        "type of data", 
        "actual data in string format")
        --%>
        <%

            String fiv = request.getAttribute("fivePer").toString();
            String four = request.getAttribute("fourPer").toString();
            String three = request.getAttribute("threePer").toString();
            String two = request.getAttribute("twoPer").toString();
            String one = request.getAttribute("onePer").toString();

            String fivePerSam = request.getAttribute("fivePerSam").toString();
            String fourPerSam = request.getAttribute("fourPerSam").toString();
            String threePerSam = request.getAttribute("threePerSam").toString();
            String twoPerSam = request.getAttribute("twoPerSam").toString();
            String onePerSam = request.getAttribute("onePerSam").toString();

            String fivePerlg = request.getAttribute("fivePerlg").toString();
            String fourPerlg = request.getAttribute("fourPerlg").toString();
            String threePerlg = request.getAttribute("threePerlg").toString();
            String twoPerlg = request.getAttribute("twoPerlg").toString();
            String onePerlg = request.getAttribute("onePerlg").toString();

            String fivePersony = request.getAttribute("fivePersony").toString();
            String fourPersony = request.getAttribute("fourPersony").toString();
            String threePersony = request.getAttribute("threePersony").toString();
            String twoPersony = request.getAttribute("twoPersony").toString();
            String onePersony = request.getAttribute("onePersony").toString();

            String data = " {\"chart\": {\"caption\": \"Iphone\",\"subCaption\": \"Répartition en fonction des review\",\"theme\": \"carbon\"},\"data\": [{\"label\": \"5 stars\",\"value\": " + fiv + "}, {\"label\": \"4 stars\",\"value\": " + four + "}, {\"label\": \"3 stars\",\"value\": " + three + "}, {\"label\": \"2 stars\",\"value\": " + two + "}, {\"label\": \"1 star\",\"value\": " + one + "}]}";

            String samData = " {\"chart\": {\"caption\": \"Samsung\",\"subCaption\": \"Répartition en fonction des review\",\"theme\": \"carbon\"},\"data\": [{\"label\": \"5 stars\",\"value\": " + fivePerSam + "}, {\"label\": \"4 stars\",\"value\": " + fourPerSam + "}, {\"label\": \"3 stars\",\"value\": " + threePerSam + "}, {\"label\": \"2 stars\",\"value\": " + twoPerSam + "}, {\"label\": \"1 star\",\"value\": " + onePerSam + "}]}";

            String lgData = " {\"chart\": {\"caption\": \"LG\",\"subCaption\": \"Répartition en fonction des review\",\"theme\": \"carbon\"},\"data\": [{\"label\": \"5 stars\",\"value\": " + fivePerlg + "}, {\"label\": \"4 stars\",\"value\": " + fourPerlg + "}, {\"label\": \"3 stars\",\"value\": " + threePerlg + "}, {\"label\": \"2 stars\",\"value\": " + twoPerlg + "}, {\"label\": \"1 star\",\"value\": " + onePerlg + "}]}";

            String sonyData = " {\"chart\": {\"caption\": \"Sony\",\"subCaption\": \"Répartition en fonction des review\",\"theme\": \"carbon\"},\"data\": [{\"label\": \"5 stars\",\"value\": " + fivePersony + "}, {\"label\": \"4 stars\",\"value\": " + fourPersony + "}, {\"label\": \"3 stars\",\"value\": " + threePersony + "}, {\"label\": \"2 stars\",\"value\": " + twoPersony + "}, {\"label\": \"1 star\",\"value\": " + onePersony + "}]}";

            //iPHONE
            FusionCharts ipie3DChart = new FusionCharts(
                    "pie3d",// chartType
                    "chart1",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "iphoneChartPie",//  chartContainer
                    "json",//   dataFormat
                    data
            );

            FusionCharts icolumn3DChart = new FusionCharts(
                    "column3d",// chartType
                    "chart2",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "iphoneChartCol",//  chartContainer
                    "json",//   dataFormat
                    data
            );

            //SAMSUNG
            FusionCharts sam3DChart = new FusionCharts(
                    "pie3d",// chartType
                    "chart3",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "samChartPie",//  chartContainer
                    "json",//   dataFormat
                    samData
            );

            FusionCharts samcolumn3DChart = new FusionCharts(
                    "column3d",// chartType
                    "chart4",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "samChartCol",//  chartContainer
                    "json",//   dataFormat
                    samData
            );

            //LG
            FusionCharts lg3DChart = new FusionCharts(
                    "pie3d",// chartType
                    "chart5",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "lgChartPie",//  chartContainer
                    "json",//   dataFormat
                    lgData
            );

            FusionCharts lgcolumn3DChart = new FusionCharts(
                    "column3d",// chartType
                    "chart6",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "lgChartCol",//  chartContainer
                    "json",//   dataFormat
                    lgData
            );

            //Sony
            FusionCharts sony3DChart = new FusionCharts(
                    "pie3d",// chartType
                    "chart7",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "sonyChartPie",//  chartContainer
                    "json",//   dataFormat
                    sonyData
            );

            FusionCharts sonycolumn3DChart = new FusionCharts(
                    "column3d",// chartType
                    "chart8",// chartId
                    "100%", //   chartWidth
                    "400",//    chartHeight
                    "sonyChartCol",//  chartContainer
                    "json",//   dataFormat
                    sonyData
            );


        %>
        <!--            
        Render the chart
        -->
        <%=ipie3DChart.render()%>
        <%=icolumn3DChart.render()%>

        <%=sam3DChart.render()%>
        <%=samcolumn3DChart.render()%>

        <%=lg3DChart.render()%>
        <%=lgcolumn3DChart.render()%>

        <%=sony3DChart.render()%>
        <%=sonycolumn3DChart.render()%>




        <script>
            function openCity(cityName, evt) {
                var i, tablinks;
                 document.getElementById("proba").style.display='none';
                var x = document.getElementsByClassName("city");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablink");
                for (i = 0; i < x.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " w3-red";
            }
            function show()
            {
                document.getElementById("allstats").style.display = 'block';
                document.getElementById("st").style.display = 'none';
                 document.getElementById("proba").style.display='none';
                var x = document.getElementsByClassName("city");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
            }
            function showProba(){
                 document.getElementById("allstats").style.display = 'none';
                document.getElementById("st").style.display = 'none';
                var x = document.getElementsByClassName("city");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                document.getElementById("proba").style.display='block';
            }
        </script>
    </body>
</html>
