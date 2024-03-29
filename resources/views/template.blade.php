<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>1° Colóquio Brasil-Itália</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Brasil, Italia, Educação, Uneb" />
    <link rel="shortcut icon" type="image/x-icon" href="/images/logo.png">
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- // custom-theme -->
    <!--css links-->
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--bootstrap-->
    <link href="/css/font-awesome.css" rel="stylesheet">
    <!--font-awesome-->
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--stylesheet-->
    <!--//css links-->
    <!--fonts-->
    <!-- <link href="//fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=PT+Serif:400,700" rel="stylesheet"> -->
    <!--//fonts-->
</head>

<body>
    <!-- Header -->
    <div id="home" class="banner w3l" style="background-color:white !important; margin:0px; padding:0px;">
        <div class="header-nav">
            <nav class="navbar navbar-default" style="background-color:#037047; margin:0px; padding:0px;">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" style="z-index:99999">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar bg-danger"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="header-top">
                    <div class="navbar-header logo" style="margin:0px; padding:0px;">

                        <!-- <h1>
									<a class="navbar-brand" href="index.html"><i class="fa fa-graduation-cap" aria-hidden="true"></i>Emphasize</a>
								</h1> -->
                    </div>
                    <!-- navbar-header -->
                    <!-- <div class="contact-bnr-w3-agile" style="background-color: #3E4095;">
                        <ul>
                            <li><a href="mailto:info@example.com">PPGESA – PROGRAMA DE PÓS-GRADUAÇÃO MESTRADO EM EDUCAÇÃO
                                    CULTURA E TERRITÓRIOS SEMIÁRIDOS</a></li>
                            <li><i class="fa fa-phone" aria-hidden="true"></i>+55 (74) 3611-5617 (ramal 230)</li>
                        </ul>
                    </div> -->
                </div>
                <div class="collapse navbar-collapse cl-effect-13" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right ">
                        <li><a href="/" class="active">Home</a></li>
                        <li><a href="{{Route::current()->action['prefix']}}/programacao">
                                @if(Route::current()->action['prefix'] == '/it')
                                Programmazione
                                @else
                                Programação
                                @endif
                            </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                @if(Route::current()->action['prefix'] == '/it')
                                Iscrizione
                                @else
                                Inscrição
                                @endif
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="{{Route::current()->action['prefix']}}/inscricao">
                                        @if(Route::current()->action['prefix'] == '/it')
                                        Sulla registrazione
                                        @else
                                        Sobre a inscrição
                                        @endif
                                    </a>
                                </li>
                                <li><a href="/login">
                                        @if(Route::current()->action['prefix'] == '/it')
                                        Sistema di registrazione
                                        @else
                                        Sistema de inscrição
                                        @endif
                                    </a></li>

                            </ul>
                        </li>
                        <li><a href="/cobertura">
                                @if(Route::current()->action['prefix'] == '/it')
                                Copertura
                                @else
                                Cobertura
                                @endif

                            </a></li>
                        <li><a href="#">
                                @if(Route::current()->action['prefix'] == '/it')
                                Certificato
                                @else
                                Certificados
                                @endif
                            </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                @if(Route::current()->action['prefix'] == '/it')
                                Pubblicazioni
                                @else
                                Publicações
                                @endif
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/comite">
                                        @if(Route::current()->action['prefix'] == '/it')
                                        COMITATO SCIENTIFICO
                                        @else
                                        Comitê Científico
                                        @endif
                                    </a></li>
                                <li><a href="/comite#comissao">
                                        @if(Route::current()->action['prefix'] == '/it')
                                        comitato organizzatore
                                        @else
                                        Comissão Organizadora
                                        @endif
                                    </a></li>
                            </ul>
                        </li>
                        <li><a href="{{Route::current()->action['prefix']}}/contatos">
                                @if(Route::current()->action['prefix'] == '/it')
                                Contatti
                                @else
                                Contatos
                                @endif

                            </a></li>
                    </ul>


                </div>
                <div class="clearfix"> </div>
            </nav>
            <div class="clearfix"> </div>
        </div>
        <div style="padding:20px;">
            <a href="/"> <img src="/images/icon-brasil.png" alt="" style="width:30px"></a>
            <a href="/it">
                <img src="/images/icon-ital.png" alt="" style="width:30px"></a>
        </div>
        @yield('conteudo')

        <!-- //Modal5 -->
        <!-- //Events-Modal-Popup-->
        <!-- about-agileits -->


        <div class="">
            <!-- footer -->
            <div class="container text-center" style="margin-top:30px;">
                <div class="row">
                    <div class="col-sm-12">
                        @if(Route::current()->action['prefix'] == '/it')
                        <h4>realizzazione</h4>
                        @else
                        <h4>Realização</h4>
                        @endif
                    </div>
                    <div class="col-sm-3">
                        <a href="http://www.uneb.br/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/uneb.png" alt="" style="width:250px;"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="http://www.ppgesa.uneb.br/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/ppgesa.png" alt="" style="width:150px;"></a>
                    </div>
                    <div class="col-sm-3">
                        <a href="http://intereurisland.blogspot.com/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/inter.png" alt="" style="width:250px;"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="http://capes.gov.br/pt/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/capes.png" alt="" style="width:125px;"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="http://www.brasil.gov.br/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/governo.png" alt="" style="width:250px;"></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        @if(Route::current()->action['prefix'] == '/it')
                        <h4> supporto</h4>
                        @else
                        <h4>Apoio</h4>
                        @endif
                    </div>
                    <div class="col-sm-5">
                        <a href="https://www.unipd.it/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/universita.png" alt="" style="width:100%;"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="http://www.enars.it/joomla/it/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/enars.png" alt="" style="width:150px;"></a>
                    </div>
                    <div class="col-sm-3">
                        <a href="https://www.scholasoccurrentes.org/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/scholas.png" alt="" style="width:200px;">
                        </a>
                    </div>
                    <div class="col-sm-2">
                        <a href="http://portais.univasf.edu.br/" target="_blank" rel="noopener noreferrer">
                            <img src="images/marcas/univasf.png" alt="" style="width:150px;"></a>
                    </div>
                </div>
            </div>

            <div class="contact-w3ls ">
                <div class="contact-top-w3-agile">
                </div>
                <div class="container">
                    <h2 class="heading-agileinfo white-w3ls">
                        @if(Route::current()->action['prefix'] == '/it')
                        Contatti
                        @else
                        Contatos
                        @endif
                    </h2>
                    <ul class="w3_address">
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i><span>Universidade do Estado Bahia. Av, R. Edgar Chastinet, s/n - São Geraldo, Juazeiro - BA</span>
                        </li>
                        <li><i class="fa fa-volume-control-phone" aria-hidden="true"></i><span>+55 (74) 3611-5617 (ramal 230)</span></li>
                        <li><i class="fa fa-envelope-o" aria-hidden="true"></i><span><a href="mailto:jnnascimento@uneb.br"> ppgesa@uneb.br</a></span></li>
                        <li><i class="fa fa-comments-o" aria-hidden="true"></i><span><a href="/contatos">Mais Contatos
                                    >></a></span></li>
                    </ul>
                    <div class="clearfix"></div>

                </div>
            </div>
            <!--//footer -->
            <!-- js -->
            <script type="text/javascript" src="/js/jquery-2.1.4.min.js"></script>
            <!--//js -->
            <script src="/js/SmoothScroll.min.js"></script>
            <!-- responsiveslides -->
            <script src="/js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function() {
                    // Slideshow 4
                    $("#slider3").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav: true,
                        speed: 500,
                        namespace: "callbacks",
                        before: function() {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function() {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });
                });
            </script>
            <!-- //responsiveslides -->
            <!-- OnScroll-Number-Increase-JavaScript -->
            <script type="text/javascript" src="/js/numscroller-1.0.js"></script>
            <!-- //OnScroll-Number-Increase-JavaScript -->
            <!--Scrolling-top -->
            <script type="text/javascript" src="/js/move-top.js"></script>
            <script type="text/javascript" src="/js/easing.js"></script>
            <script type="text/javascript">
                jQuery(document).ready(function($) {
                    $(".scroll").click(function(event) {
                        event.preventDefault();
                        $('html,body').animate({
                            scrollTop: $(this.hash).offset().top
                        }, 1000);
                    });
                });
            </script>
            <!--//Scrolling-top -->
            <!--flexiselDemo1 -->
            <script type="text/javascript">
                $(window).load(function() {
                    $("#flexiselDemo1").flexisel({
                        visibleItems: 2,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: true,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 1
                            },
                            tablet: {
                                changePoint: 991,
                                visibleItems: 1
                            }
                        }
                    });

                });
            </script>
            <script type="text/javascript" src="/js/jquery.flexisel.js"></script>
            <!--//flexiselDemo1 -->
            <!-- smooth scrolling -->
            <script type="text/javascript">
                $(document).ready(function() {
                    /*
                    	var defaults = {
                    	containerID: 'toTop', // fading element id
                    	containerHoverID: 'toTopHover', // fading element hover id
                    	scrollSpeed: 1200,
                    	easingType: 'linear' 
                    	};
                    */
                    $().UItoTop({
                        easingType: 'easeOutQuart'
                    });
                });
            </script>
            <a href="#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
            <!-- //smooth scrolling -->
            <script type="text/javascript" src="/js/bootstrap-3.1.1.min.js"></script>
</body>

</html>