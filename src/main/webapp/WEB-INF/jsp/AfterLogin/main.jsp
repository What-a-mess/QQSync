<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>JPetStore</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../static/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="../../../static/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../../static/grayscale/css/grayscale.css" rel="stylesheet">




</head>

<body id="page-top">
<div>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" onclick="searchPage('/toCarousel')" href="javascript:void(0)">首页</a>
        <button class="navbar-toggler navbar-toggler-right"
                type="button" data-toggle="collapse"
                data-target="#navbarResponsive"
                aria-controls="navbarResponsive"
                aria-expanded="false" aria-label="Toggle navigation">
            菜单
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown" href="#about">宠物<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" onclick="searchPage('/viewCategory?categoryId=')" href="javascript:void(0)">鹦鹉</a></li>
                        <li><a class="dropdown-item" onclick="searchPage('/viewCategory?categoryId=')" href="javascript:void(0)">猫猫</a></li>
                        <li><a class="dropdown-item" onclick="searchPage('/viewCategory?categoryId=101')" href="javascript:void(0)">狗狗</a></li>
                        <li><a class="dropdown-item" onclick="searchPage('/viewCategory?categoryId=')" href="javascript:void(0)">鱼儿</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown" href="#about">个人中心<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" onclick="searchPage('/toCart')" href="javascript:void(0)">购物车&nbsp<span id="cartLen" class="badge badge-secondary" onclick="updateLength()">${cartLength}</span></a></li>
                        <li><a class="dropdown-item" onclick="searchPage('/toModifyInfoServlet')" href="javascript:void(0)">个人信息</a></li>
                        <li><a class="dropdown-item" onclick="searchPage('/toOrderPage')" href="javascript:void(0)">我的订单</a></li>
                        <li><a class="dropdown-item" onclick="searchPage('/toChangePassword')" href="javascript:void(0)">修改密码</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#">销售情况</a>
                </li>
                <li class="nav-item">
<%--                    搜索--%>
                    <br />
    <div class="input-group">
        <input onblur="checkSearchInfo()" id="searchInfo" name="searchInfo" type="text" class="form-control" placeholder="Search...">
        <div class="input-group-append">
            <button class="btn btn-secondary" onclick="searchPage7()" href="javascript:void(0)">

        </button>
        </div>
    </div>
    <div>
        <label>
        <c:if test="${productLength!=0}">
            <c:forEach items="${prodcut}" var="productSearch">
        <span><a onclick="searchPage('animalItemServlet')" href="javascript:void(0)" id="${productSearch.itemId}">
                ${productSearch.productName}
        </a></span>
            </c:forEach>
        </c:if>
        </label>
    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger"  href="/logout">退出登录</a>
<%--                    退出登录直接跳转到欢迎界面--%>
                </li>
            </ul>
        </div>
    </div>
</nav>
</div>


<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col"><br /><br /><br /></th>
        <th scope="col"><br /><br /><br /></th>
        <th scope="col"><br /><br /><br /></th>
        <th scope="col"><br /><br /><br /></th>
    </tr>
    </thead>

</table>

<div id = changePart>


<%--    Ajax--%>
</div>

<!-- Contact Section -->
<section class="contact-section bg-black">
    <div class="container">

        <div class="row">

            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Address</h4>
                        <hr class="my-4">
                        <div class="small text-black-50">湖南省长沙市天心区铁道学院</div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-envelope text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Email</h4>
                        <hr class="my-4">
                        <div class="small text-black-50">
                            <a href="#">Chritopher@foxmail.com</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-mobile-alt text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Phone</h4>
                        <hr class="my-4">
                        <div class="small text-black-50">911</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="social d-flex justify-content-center">
            <a href="#" class="mx-2 fab fa-twitter">
            </a>
            <a href="#" class="mx-2 fab fa-facebook-f">
            </a>
            <a href="#" class="mx-2 fab fa-github">
            </a>
        </div>

    </div>
</section>

<!-- Footer -->
<footer class="bg-black small text-center text-white-50">
    <div class="container">
        Copyright &copy; 2019 Dyp. All rights reserved.
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="../../../static/jquery/jquery.min.js"></script>
<script src="../../../static/jquery/jquery-ui.min.js"></script>
<script src="../../../static/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="../../../static/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for this template -->
<script src="../../../static/grayscale/js/grayscale.min.js"></script>

</body>

<script>

    function checkSearchInfo() {
        var info = document.getElementById('searchInfo').value;
        if(info!=null) {
            $.ajax({
                type: "post",
                url: "/search?info=" + info,
                data: {},
                success: function (Data) {
                }
            })
        }
<%--        <c:forEach items="Item" var="searchItem">--%>
<%--        document.getElementById("suspensionPicCss").innerHTML=${searchItem.Item.id};--%>
<%--        </c:forEach>--%>
    }

    function searchPage(url) {
        $.ajax({
            type: "get",
            url: url,
            data: "",
            cache: false,
            success: function (data) {
                $("#changePart").html(data);
            }
        })
    }
    searchPage('/toCarousel')

    function searchPage7() {
        var key = document.getElementById('searchInfo').value;
        $.ajax({
            type: "get",
            url: '/search?key=' + key,
            data: "",
            cache: false,
            success: function (data) {
                $("#changePart").html(data);
            }
        })
    }
</script>
<script>
    function updateLength() {
        var len = document.getElementById('cartLen');
        $.ajax({
            type: "get",
            url: '/getCartLength',
            data: "",
            cache: false,
            success: function (data) {
                len.innerText=data;
            }
        })
    }
</script>
<script>
    $( function() {
        var availableTags;

        $("#searchInfo").bind("input propertychange", function () {
            var key = document.getElementById('searchInfo').value;
            $.ajax({
                type: "post",
                url: "/dynamicSearch?key=" + key,
                data: {},
                success: function (data) {
                    console.log('changed');
                    availableTags = JSON.parse(data);
                    console.log(availableTags);
                    $( "#searchInfo" ).autocomplete({//调用补全功能
                        source: availableTags
                    });
                }
            })
        })

        $( "#searchInfo" ).autocomplete({//调用补全功能
            source: availableTags
        });
    } );
</script>
</html>
