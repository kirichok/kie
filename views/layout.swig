<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{{ title }}</title>

    <!--<link rel="stylesheet" href="css/bootstrap.css">-->
    <link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/vendors/sweetalert.css">
    <!--<link rel="stylesheet" href="css/vendors/loading.css">-->
    <!--<link rel="stylesheet" href="css/vendors/calendar-mini.css">-->
    <link rel="stylesheet" href="css/main.css">

    <script src="js/modernizr.js"></script>

    <link rel="icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

{% block content %}
{% endblock %}

<script src="vendors/jquery/dist/jquery.min.js"></script>
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!--<script src="vendors/jquery.nicescroll/jquery.nicescroll.min.js"></script>-->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!--<script src="js/bootstrap.min.js"></script>-->
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/classie.js"></script>
<script src="js/ui.js"></script>
<script src="js/search.js"></script>
<script src="js/sweetalert.min.js"></script>
<!--<script src="js/jquery.easypiechart.min.js"></script>-->
<!--<script src="js/calendar.js"></script>-->
<!--<script type="text/javascript">
        $(document).ready(function () {
                $('#inform-1').easyPieChart({
                        barColor: '#f2a654',
                        trackColor: '#585b9c',
                        scaleColor: false,
                        lineWidth: 6,
                        size: 60,
                        animate: 1000
                });
                $('#inform-2').easyPieChart({
                        barColor: '#7266ba',
                        trackColor: '#34aed4',
                        scaleColor: false,
                        lineWidth: 6,
                        size: 60,
                        animate: 1000
                });
        });
</script>-->
<!--<script src="js/chart.js"></script>-->
<!--<script>
        Chart.defaults.global.animationEasing = "easeOutBounce";
        Chart.defaults.global.pointLabelFontSize = 12;
        Chart.defaults.global.responsive = true;
        Chart.defaults.global.maintainAspectRatio = false;

        var lineChartData = {
                labels: [1, 2, 3, 4, 5, 6, 7],
                datasets: [
                        {
                                label: "Default",
                                fillColor: "#7266ba",
                                strokeColor: "#7266ba",
                                pointColor: "#7266ba",
                                data: [23, 41, 35, 48, 45, 34, 37]
                                                        },
                        {
                                label: "Success",
                                fillColor: "#46be8a",
                                strokeColor: "#46be8a",
                                pointColor: "#46be8a",
                                data: [13, 35, 30, 43, 37, 27, 30]
                                                        },
                        {
                                label: "Warning",
                                fillColor: "#f2a654",
                                strokeColor: "#f2a654",
                                pointColor: "#f2a654",
                                data: [10, 21, 24, 34, 26, 17, 20]
                                                        },
                                        ]
        }

        var ctxLine = document.getElementById("chartLine").getContext("2d");
        var latestLabel = lineChartData.labels[6];

        var myLiveChart = new Chart(ctxLine).Line(lineChartData, {animation: true, animationSteps: 1, showScale: false, pointDot: false});


        setInterval(function(){
                // Add two random numbers for each dataset
                myLiveChart.addData([Math.floor(Math.random() * 100), Math.floor(Math.random() * 100), Math.floor(Math.random() * 100)], ++latestLabel);
                // Remove the first point so we dont just add values forever
                myLiveChart.removeData();
        }, 1500);

        var barChartData = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                        {
                                fillColor: "#7266ba",
                                highlightFill: "#585b9c",
                                data: [10, 21, 58, 64, 21, 35, 55]
                                                        },
                        {
                                fillColor: "#f2a654",
                                highlightFill: "#f2a654",
                                data: [13, 25, 10, 68, 10, 2, 46]
                                                        }
                                        ]

        }
        var cm3Data = {
                labels: ["1", "2", "3", "4", "5", "6", "7"],
                datasets: [
                        {
                                label: "Default",
                                fillColor: "transparent",
                                strokeColor: "#ffffff",
                                pointColor: "#7266ba",
                                pointStrokeColor: "#ffffff",
                                data: [5, 0, 10, 20, 15, 20, 20]
                                                        }
                                        ]
        };
        var cm4Data = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                        {
                                fillColor: "#ffffff",
                                highlightFill: "#7266ba",
                                data: [10, 21, 58, 64, 21, 35, 55]
                                                        }
                                        ]

        };
        var cm5Data = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                        {
                                label: "Default",
                                fillColor: "#7266ba",
                                strokeColor: "#7266ba",
                                pointColor: "#7266ba",
                                data: [23, 41, 35, 48, 45, 34, 37]
                                                        }
                                        ]
        };
        var cl1Data = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                        {
                                label: "Default",
                                fillColor: "transparent",
                                strokeColor: "#39bee8",
                                pointColor: "#39bee8",
                                data: [5, 10, 15, 25, 22, 20, 25]
                                                        },
                        {
                                label: "Success",
                                fillColor: "transparent",
                                strokeColor: "#f2a654",
                                pointColor: "#f2a654",
                                data: [0, 5, 8, 17, 20, 25, 30]
                                                        }
                                        ]
        };
        var cl2Data = {
                labels: ["January", "February", "March", "April", "May", "June", "July"],
                datasets: [
                        {
                                label: "Default",
                                fillColor: "#7266ba",
                                strokeColor: "#7266ba",
                                pointColor: "#7266ba",
                                data: [8, 10, 14, 12, 10, 12, 14]
                                                        },
                        {
                                label: "Default",
                                fillColor: "#46be8a",
                                strokeColor: "#46be8a",
                                pointColor: "#46be8a",
                                data: [5, 8, 12, 10, 8, 10, 12]
                                                        }
                                        ]
        };

        window.onload = function () {
//      var ctxLine = document.getElementById("chartLine").getContext("2d");
                var ctxBar = document.getElementById("chartBar").getContext("2d");
                var cm3 = document.getElementById("chart-mini-3").getContext("2d");
                var cm4 = document.getElementById("chart-mini-4").getContext("2d");
                var cm5 = document.getElementById("chart-mini-5").getContext("2d");
                var cl1 = document.getElementById("cl1").getContext("2d");
                var cl2 = document.getElementById("cl2").getContext("2d");

//      window.myLine = new Chart(ctxLine).Line(lineChartData, {
//        showScale: false,
//        pointDot: false
//      });

                window.myBar = new Chart(ctxBar).Bar(barChartData, {
                        showScale: false,
                        barShowStroke: false,
                        barValueSpacing: 0,
                        barDatasetSpacing: 0
                });

                window.myLine = new Chart(cm3).Line(cm3Data, {
                        showScale: false,
                        pointDotStrokeWidth: 3,
                        bezierCurve: false
                });

                window.myBar = new Chart(cm4).Bar(cm4Data, {
                        showScale: false,
                        barShowStroke: false,
                        barValueSpacing: 50,
                        barDatasetSpacing: 0
                });

                window.myLine = new Chart(cm5).Line(cm5Data, {
                        showScale: false,
                        pointDot: false,
                        bezierCurve: false
                });

                window.myLine = new Chart(cl1).Line(cl1Data, {
                        showScale: false,
                        pointDot: false,
                        bezierCurve: false
                });

                window.myLine = new Chart(cl2).Line(cl2Data, {
                        showScale: false,
                        pointDot: false,
                        bezierCurve: false
                });
        };
</script>-->
<!--<script>
        $(document).ready(function () {
                $("#calendar-mini").zabuto_calendar({
                        today: true,
                        weekstartson: 0,
                        legend: [
                                {
                                        type: "text",
                                        label: "Meet your friends today",
                                        badge: "11:30"
                                                                        },
                                {
                                        type: "text",
                                        label: "Tweet “thanks” for your followers",
                                        badge: "21:00"
                                                                        }
                                                        ]
                });
        });
</script>-->
<!--<script src="js/skycons.js"></script>
<script>
var skycons = new Skycons({
                "color": "white"
        });
        skycons.add("icon1", Skycons.PARTLY_CLOUDY_DAY);
        skycons.add("icon2", Skycons.CLEAR_DAY);
        skycons.play();
</script>-->

<!--<script src="js/jquery.nicescroll.min.js"></script>-->
<!--<script src="js/TweenMax.min.js"></script>-->
<!--<script src="js/chat.js"></script>-->
<!--<script src="js/peppermint.min.js"></script>-->
<script>
    /*$(".chat-messages").niceScroll();*/

    /*$('.team-body').Peppermint({
     dots: true
     });*/

    //UltraWidget
    /*function dynamicWidget(id, time, number, attr) {
     setTimeout(function(){
     $("#" + id).prop('Counter',0).animate({
     Counter: number
     }, {
     duration: time,
     step: function (now) {
     if(attr){
     $("#" + id + " .inform-value").text(Math.ceil(now) + attr);
     }
     else{
     $("#" + id + " .inform-value").text(Math.ceil(now));
     }
     }
     });
     }, 350);
     };

     function slowCount(id, number, time) {
     setTimeout(function(){
     var n = +number;
     setInterval(
     function(){
     $("#" + id + " .inform-value").text(n++);
     }, time
     );
     }, 2500);
     };



     dynamicWidget("ultra1", 2000, 400);
     dynamicWidget("ultra2", 2000, 13140, " $");
     dynamicWidget("ultra3", 2000, 9001);
     dynamicWidget("ultra4", 2000, 350);
     dynamicWidget("ultra5", 6000, 74, " %");
     dynamicWidget("ultra6", 14000, 46, " %");

     slowCount("ultra1", 400 , 2000);
     slowCount("ultra3", 9001 , 3300);*/
</script>

</body>
</html>