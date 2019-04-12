<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>专辑</title>
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
                    Coldplay专题</a></h1>
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
            <li><a href="getComment?model_Location=introduce"><i
                    class="glyphicon glyphicon-user"></i><span>介绍</span></a></li>
            <li><a href="getComment?model_Location=songs"><i class="glyphicon glyphicon-headphones"></i><span>歌曲</span></a>
            </li>
            <li><a href="getComment?model_Location=album" class="active"><i
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
<!-- //navigation end here -->
<!--- albums -->
<div class="albums agile-blog">
    <div class="container">
        <h2 class="agile-title">${albumValue}</h2>
        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-w3top">
                <h5>4th November 2016 </h5>
            </div>
            <div class="albums-left">
                <a href="single.jsp" class="wthree-almub">
                </a>
            </div>
            <div class="albums-right">
                <h4><a href="single.jsp">Dolor Sit</a></h4>
                <p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
                <a class="w3more" href="single.jsp"><i class="fa fa-mail-forward" aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-w3top">
                <h5>10th November 2016 </h5>
            </div>
            <div class="albums-left">
                <a href="single.jsp" class="wthree-almub wthree-almub2">
                </a>
            </div>
            <div class="albums-right">
                <h4><a href="single.jsp">Consequat</a></h4>
                <p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
                <a class="w3more" href="single.jsp"><i class="fa fa-mail-forward" aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-w3top">
                <h5>18th November 2016 </h5>
            </div>
            <div class="albums1-right">
                <a href="single.jsp" class="wthree-almub wthree-almub3">
                </a>
            </div>
            <div class="albums1-left">
                <h4><a href="single.jsp">Dolores Btrs</a></h4>
                <p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
                <a class="w3more" href="single.jsp"><i class="fa fa-mail-forward" aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-w3top">
                <h5>25th November 2016 </h5>
            </div>
            <div class="albums1-right">
                <a href="single.jsp" class="wthree-almub wthree-almub4">
                </a>
            </div>
            <div class="albums1-left">
                <h4><a href="single.jsp">Nam aliquam</a></h4>
                <p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
                <a class="w3more" href="single.jsp"><i class="fa fa-mail-forward" aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-w3top">
                <h5>4th November 2016 </h5>
            </div>
            <div class="albums-left">
                <a href="single.jsp" class="wthree-almub">
                </a>
            </div>
            <div class="albums-right">
                <h4><a href="single.jsp">Dolor Sit</a></h4>
                <p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
                <a class="w3more" href="single.jsp"><i class="fa fa-mail-forward" aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 w3lsalbums-grid">
            <div class="albums-w3top">
                <h5>10th November 2016 </h5>
            </div>
            <div class="albums-left">
                <a href="single.jsp" class="wthree-almub wthree-almub2">
                </a>
            </div>
            <div class="albums-right">
                <h4><a href="single.jsp">Consequat</a></h4>
                <p>Nsatolernatur auts oditaut miertase vertas.Measnseqe ustur magni dolores eoqus ratione voluptate.</p>
                <a class="w3more" href="single.jsp"><i class="fa fa-mail-forward" aria-hidden="true"></i> More</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <nav>
            <ul class="pagination w3-agileits-paging">
                <li class="disabled">
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">«</span>
                    </a>
                </li>
                <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">»</span>
                    </a>
                </li>
            </ul>
        </nav>
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