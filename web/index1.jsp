<%@ page import="com.service.ProgramService" %>
<%@ page import="com.service.impl.ProgramServiceImpl" %>
<%@ page import="com.domain.Program" %>
<%@ page import="com.domain.Comment" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>主页</title>
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
<div class="agileinfo-main">
    <div class="slider">
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 1
                $("#slider1").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                });
            });
        </script>
        <ul class="rslides" id="slider1">

            <li>
                <div class="banner">
                    <h3>${playview[0].title} </h3>
                </div>
            </li>
            <li>
                <div class="banner banner2">
                    <h3>${playview[1].title} </h3>
                </div>
            </li>
            <li>
                <div class="banner banner3">
                    <h3>${playview[2].title} </h3>
                </div>
            </li>
        </ul>
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
            <li><a class="active" href="getComment"><i aria-hidden="true"
                                                       class="glyphicon glyphicon-home"></i><span>主页</span></a></li>
            <li><a href="getComment?model_Location=introduce"><i
                    class="glyphicon glyphicon-user"></i><span>介绍</span></a></li>
            <li><a href="getComment?model_Location=songs"><i class="glyphicon glyphicon-headphones"></i><span>歌曲</span></a>
            </li>
            <li><a href="?model_Location=album"><i class="glyphicon glyphicon-list-alt"></i><span>专辑</span></a></li>
            <li><a href="?model_Location=contact"><i class="glyphicon glyphicon-envelope"></i><span>加入我们</span></a></li>
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
<!-- banner end here -->

<!-- //banner end here -->
<!-- welcome -->

<div class="welcome agileits">
    <div class="container">
        <h2 class="agile-title">${info[0].title}</h2>
        <p>${info[0].getDetail()}</p><br><br>
        <div class="welcome-agileinfo">
            <h1 class="agile-title">${representWorksValue}</h1>

            <c:forEach items="${representWorks}" var="represent">

                <div class="col-md-6 col-sm-6 col-xs-6 welcome-grids">
                    <div class="view view-w3-agile">
                        <img src="images/${represent.comment_image}" alt="" class="img-responsive"/>
                        <div class="agileits-w3layouts-mask">
                            <h4>${represent.title}</h4>
                            <p>${represent.detail}</p>
                        </div>
                    </div>
                </div>

            </c:forEach>

            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //welcome -->

<!-- events -->
<div class="events">
    <div class="container">
        <h3 class="agile-title">${newsValue}</h3>
        <div class="events-info">


            <c:forEach items="${news}" var="n">

                <div class="col-md-6 event-grids">
                    <div class="w3layouts-text">
                        <h4>${n.getYear()}<span>${n.getMonth()}/${n.getDay()} </span></h4>
                        <h6><a href="${n.external_link}" target="_blank">${n.title} </a></h6>
                        <div class="clearfix"></div>
                    </div>
                    <p>${n.detail}</p>
                </div>

            </c:forEach>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //events -->

<!--- albums -->


<div class="albums">
    <div class="container">
        <h3 class="agile-title">${newAlbumValue}</h3>

        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-left">
                <div class="wthree-almub wthree-almub">
                </div>
            </div>
            <div class="albums-right">
                <h4>${newAlbum[0].title}</h4>
                <p>${newAlbum[0].detail}</p>
                <a class="w3more" href="${newAlbum[0].external_link}"><i class="fa fa-mail-forward"
                                                                         aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-left">
                <div class="wthree-almub wthree-almub2">
                </div>
            </div>
            <div class="albums-right">
                <h4>${newAlbum[1].title}</h4>
                <p>${newAlbum[1].detail}</p>
                <a class="w3more" href="${newAlbum[1].external_link}"><i class="fa fa-mail-forward"
                                                                         aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums1-right">
                <div class="wthree-almub wthree-almub3">
                </div>
            </div>
            <div class="albums1-left">
                <h4>${newAlbum[2].title}</h4>
                <p>${newAlbum[2].detail}</p>
                <a class="w3more" href="${newAlbum[2].external_link}"><i class="fa fa-mail-forward"
                                                                         aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums1-right">
                <div class="wthree-almub wthree-almub4">
                </div>
            </div>
            <div class="albums1-left">
                <h4>${newAlbum[3].title}</h4>
                <p>${newAlbum[3].detail}</p>
                <a class="w3more" href="${newAlbum[3].external_link}"><i class="fa fa-mail-forward"
                                                                         aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!--- //albums -->
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