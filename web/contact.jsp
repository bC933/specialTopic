<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>加入我们</title>
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
                <h1><a href="index1.jsp"><i class="fa fa-music bounce bounceIn animated" aria-hidden="true"></i> Coldplay专题</a>
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
            <li><a href="getComment?model_Location=introduce"><i class="glyphicon glyphicon-user"></i><span>介绍</span></a></li>
            <li><a href="getComment?model_Location=songs"><i class="glyphicon glyphicon-headphones"></i><span>歌曲</span></a></li>
            <li><a href="getComment?model_Location=album"><i class="glyphicon glyphicon-list-alt"></i><span>专辑</span></a></li>
            <li><a href="getComment?model_Location=contact" class="active"><i class="glyphicon glyphicon-envelope"></i><span>加入我们</span></a>
            </li>
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

<script type="text/javascript">

    function show() {
        alert("发送成功！")
    }

</script>

<!-- //navigation end here -->
<!-- contact -->
<div class="contact">
    <div class="container">
        <h2 class="agile-title">加入我们</h2>
        <div class="col-md-7 contact-right">
            <form action="ContactServlet" method="post">
                <input type="text" name="name" placeholder="名字" required="">
                <input type="email" name="email" placeholder="邮箱" required="">
                <input type="text" name="telephone" placeholder="电话" required="">
                <textarea name="message" placeholder="内容..." required=""></textarea>
                <input type="submit" value="发送">
            </form>
        </div>
        <div class="col-md-5 contact-left">
            <p>"Hello World. "</p>
            <ul>
                <li><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                    广东省 广州市 天河区 华南农业大学
                </li>
                <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                    110
                </li>
                <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    <a href="mailto:example@mail.com">mail@163.com</a>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
        <div class="map">
            <h3 class="agile-title">How to Find Us</h3>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4376542.827441857!2d133.94238155277205!3d-25.73870281693212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sen!2sin!4v1439377130002"
                    allowfullscreen></iframe>
        </div>
    </div>
</div>
<!-- //contact -->
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
                    <h3>更多联系方式</h3>
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