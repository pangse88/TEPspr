<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><tiles:getAsString name="title"/></title>

   <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	
    <!-- Css animations  -->
    <link href="<c:url value='/resources/bootstrap/uni/css/animate.css'/>" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="<c:url value='/resources/bootstrap/uni/css/style.red.css'/>" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="<c:url value='/resources/bootstrap/uni/css/custom.css'/>" rel="stylesheet">
    
    <!-- DatePicker stylesheet -->
    <link href="<c:url value='/resources/bootstrap/uni/css/simple-dtpicker.css'/>" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
    <!-- owl carousel css -->

    <link href="<c:url value='/resources/bootstrap/uni/css/owl.carousel.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/bootstrap/uni/css/owl.theme.css'/>" rel="stylesheet">
</head>

<body>

    <div id="all">

		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="body"/>
		<tiles:insertAttribute name="footer"/>

    </div>
    <!-- /#all -->

    <!-- #### JAVASCRIPT FILES ### -->

    <script src="<c:url value='/resources/bootstrap/uni/js/jquery-1.11.0.min.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/jquery.cookie.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/waypoints.min.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/jquery.counterup.min.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/jquery.parallax-1.1.3.js'/>"></script>
    <script src="<c:url value='/resources/bootstrap/uni/js/front.js'/>"></script>

    <!-- owl carousel -->
    <script src="<c:url value='/resources/bootstrap/uni/js/owl.carousel.min.js'/>"></script>

</body>

</html>