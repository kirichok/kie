<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{{ title }}</title>

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!--<link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">-->
    <!--<link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">-->
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/vendors/sweetalert.css">
    <!--<link rel="stylesheet" href="css/vendors/loading.css">-->
    <!--<link rel="stylesheet" href="css/vendors/calendar-mini.css">-->
    <link rel="stylesheet" href="css/main.css">

    <script src="js/modernizr.js"></script>

    <link rel="icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
    {% block css %}
    {% endblock %}
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--<![if lt IE 9]>-->
    <!--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
    <!--<![endif]&ndash;&gt;-->
</head>
<body>
<div class="preloader">
    <div class="preloader-anim la-animate"></div>
    <div class="loading-anim">Loading</div>
</div>
<div id="wrap-site" class="wrap-site">
    {% include 'header.swig' %}
    {% include 'menu.swig' %}
    {% block main %}
    {% endblock %}
    {% include 'footer.swig' %}
</div>
<!--<div id="overlay" class="overlay"></div>-->
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 28 28" style="display: none;" xml:space="preserve">
    <g id="icon-close">
	    <line x1="2" y1="2" x2="26" y2="26" />
		<line x1="2" y1="26" x2="26" y2="2" />
	</g>
</svg>

<!--<script src="vendors/jquery/dist/jquery.min.js"></script>-->
<!--<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>-->
<!--<script src="vendors/jquery.nicescroll/jquery.nicescroll.min.js"></script>-->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.nicescroll.min.js"></script>
<script>
    $(".chat-users").niceScroll();
    $(".chat-body").niceScroll();
    $(".chat-messages").niceScroll();
</script>
<script src="js/classie.js"></script>
<script src="js/menu.js"></script>
<script src="js/main.js"></script>
<!--<script src="js/ui.js"></script>-->
<script src="js/search.js"></script>
<script src="js/sweetalert.min.js"></script>
<script src="js/chat.js"></script>
<!--<script src="js/jquery.easypiechart.min.js"></script>-->
<!--<script src="js/calendar.js"></script>-->
{% block js %}
{% endblock %}
</body>
</html>