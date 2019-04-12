<%@ page import="com.service.ProgramService" %>
<%@ page import="com.service.impl.ProgramServiceImpl" %>
<%@ page import="com.domain.Program" %>
<%@ page import="com.domain.Comment" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>介绍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Aladin" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
          rel='stylesheet' type='text/css'>
    <!-- //web-fonts -->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
</head>
<body>
<!-- banner start here -->
<div class="agileinfo-main about-top">
    <div class="banner">
    </div>
    <div class="agileinfo-header">
        <div class="container">
            <div class="agile-logo">
                <h1><a href="index1.jsp"><i class="fa fa-music bounce bounceIn animated" aria-hidden="true"></i>
                    Coldplay专题</a>
                </h1>
            </div>
            <div class="agileits-w3layouts-icons">
                <div class="social-icon">
                    <a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="social-button google"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="social-button dribbble"><i class="fa fa-dribbble"></i></a>
                    <a href="#" class="social-button skype"><i class="fa fa-skype"></i></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- navigation start here -->
    <div class="top-nav">
        <span class="menu">Menu</span>
        <ul class="w3l">
            <li><a href="getComment"><i aria-hidden="true" class="glyphicon glyphicon-home"></i><span>主页</span></a></li>
            <li><a href="getComment?model_Location=introduce" class="active"><i
                    class="glyphicon glyphicon-user"></i><span>介绍</span></a></li>
            <li><a href="getComment?model_Location=songs"><i class="glyphicon glyphicon-headphones"></i><span>歌曲</span></a>
            </li>
            <li><a href="getComment?model_Location=album"><i
                    class="glyphicon glyphicon-list-alt"></i><span>专辑</span></a></li>
            <li><a href="getComment?model_Location=contact"><i
                    class="glyphicon glyphicon-envelope"></i><span>加入我们</span></a></li>
        </ul>
        <!-- script-for-menu -->
        <script>
            $("span.menu").click(function () {
                $("ul.w3l").slideToggle(300, function () {
                    // Animation complete.
                });
            });
        </script>
        <!-- //script-for-menu -->
    </div>
</div>
<!-- navigation end here -->


<!-- about -->
<div class="about agileits">
    <div class="container">
        <h2 class="agile-title">${careerValue}</h2>
        <div class="about-info">
            <div class="col-md-8 about-grids">
                <h4>${career[0].title}</h4>
                <p>${career[0].detail} </p>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe frameborder="0" src="${career[0].external_link}" allowFullScreen="true"></iframe>
                </div>
            </div>


            <div class="col-md-4 about-grids">
                <h4>${popularSongsValue}</h4>

                <c:forEach items="${popularSongs}" var="popularSong" varStatus="status">
                    <div class="pince">
                        <div class="pince-left">
                            <h5>${status.count}</h5>
                        </div>
                        <div class="pince-right">
                            <a href="${popularSong.external_link}"><p>${popularSong.title}</p></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </c:forEach>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //about -->
<!-- skill -->
<div class="skill">
    <div class="container">
        <div class="col-md-4 skill-grids">
            <h3 class="agile-title">${recordValue}</h3>
        </div>
        <div class="col-md-8 skill-grids">

            <c:forEach items="${record}" var="r">

                <div class="progress">
                    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100"
                         aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                        <h6 style="font-size: 14px">${r.title}</h6>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- //skill -->
<!-- about-team -->
<div class="about team">
    <div class="container">
        <h3 class="agile-title">${teammateValue}</h3>
        <div class="team-row">

            <c:forEach items="${teammate}" var="team">
                <div class="col-md-3 col-sm-6 col-xs-6 team-grids">
                    <div class="thumbnail team-agileits">
                        <img src="images/${team.comment_image}" class="img-responsive" alt="...">
                        <div class="w3agile-caption">
                            <h4>${team.title}</h4>
                            <p>${team.subtitle}</p>

                        </div>
                    </div>
                </div>
            </c:forEach>

            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //about-team -->
<!-- footer start here -->
<div class="agilebg-footer">
    <div class="footer">
        <div class="container">
            <div class="footer-agileinfo">
                <div class="col-md-3 col-sm-3 footer-wthree-grid">
                    <h3>导航</h3>
                    <ul>
                        <li><a href="getComment">主页</a></li>
                        <li><a href="getComment?model_Location=introduce">介绍</a></li>
                        <li><a href="getComment?model_Location=songs">歌曲</a></li>
                        <li><a href="getComment?model_Location=album">专辑</a></li>
                        <li><a href="getComment?model_Location=contact">加入我们</a></li>
                    </ul>
                </div>
                <div class="col-md-5 col-sm-5 footer-wthree-grid">
                    <h3>Latest Tweet</h3>
                    <div class="agileits-w3layouts-tweets">
                        <h5><i class="fa fa-twitter" aria-hidden="true"></i> Lorem ipsum</h5>
                    </div>
                    <p>Aenean vitae metus sit amet purus sodales blandit. Nullam ut dolor eu urna viverra semper. Mauris
                        est odio, laoreet laoreet sapien non, sollicitudin bibendum nulla.</p>
                </div>
                <div class="col-md-4 col-sm-4 footer-wthree-grid">
                    <h3>Keep In Touch</h3>
                    <div class="ftr-icons">
                        <div class="ftr-iblock">
                            <span class="glyphicon glyphicon-map-marker">  </span>
                        </div>
                        <div class="ftr-text">
                            <p>Proin vel enim nec ipsum finibus. Duis euismod massa ut sem fringilla blandit.</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="ftr-icons">
                        <div class="ftr-iblock">
                            <span class="glyphicon glyphicon-earphone">  </span>
                        </div>
                        <div class="ftr-text">
                            <p>+333 222 23456</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="ftr-icons">
                        <div class="ftr-iblock">
                            <span class="glyphicon glyphicon-envelope">  </span>
                        </div>
                        <div class="ftr-text">
                            <p><a href="mailto:info@example.com">mail@example.com</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- //footer end here -->
<!-- copy rights start here -->
<div class="copy-right">
    <div class="container">
        <p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/"
                                                                                    target="_blank"
                                                                                    title="模板之家">模板之家</a> - Collect from
            <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </div>
</div>
<!-- //copy right end here -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
</body>
</html>