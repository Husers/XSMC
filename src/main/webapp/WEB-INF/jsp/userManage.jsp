<%--
  Created by IntelliJ IDEA.
  User: HuLiang
  Date: 16-6-14
  Time: 下午4:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link rel="shortcut icon" href="img/search-icon.jpg">

    <title>Blank</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<section id="container" class="">
    <!--header start-->
    <header class="header white-bg">
        <div class="sidebar-toggle-box">
            <div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>
        </div>
        <!--logo start-->
        <a href="#" class="logo">Flat<span>lab</span></a>
        <!--logo end-->
        <div class="nav notify-row" id="top_menu">
            <!--  notification start -->
            <ul class="nav top-menu">
                <!-- settings start -->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="icon-tasks"></i>
                        <span class="badge bg-success">6</span>
                    </a>
                    <ul class="dropdown-menu extended tasks-bar">
                        <div class="notify-arrow notify-arrow-green"></div>
                        <li>
                            <p class="green">You have 6 pending tasks</p>
                        </li>
                    </ul>
                </li>
                <!-- settings end -->
                <!-- inbox dropdown start-->
                <!-- inbox dropdown end -->
                <!-- notification dropdown start-->
                <li id="header_notification_bar" class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                        <i class="icon-bell-alt"></i>
                        <span class="badge bg-warning">7</span>
                    </a>
                    <ul class="dropdown-menu extended notification">
                        <div class="notify-arrow notify-arrow-yellow"></div>
                        <li>
                            <p class="yellow">You have 7 new notifications</p>
                        </li>
                    </ul>
                </li>
                <!-- notification dropdown end -->
            </ul>
        </div>
        <div class="top-nav ">
            <ul class="nav pull-right top-menu">
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" src="img/avatar1_small.jpg">
                        <span class="username">Jhon Doue</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li><a href="#"><i class=" icon-suitcase"></i>Profile</a></li>
                        <li><a href="#"><i class="icon-cog"></i> Settings</a></li>
                        <li><a href="#"><i class="icon-bell-alt"></i> Notification</a></li>
                        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
        </div>
    </header>
    <!--header end-->
    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="sub-menu active">
                    <a href="javascript:" class="">
                        <i class="icon-group"></i>
                        <span>用户管理</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="/usermanage">用户维护</a></li>
                        <li><a class="" href="/adduser">新增用户</a></li>
                    </ul>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            用户信息
                        </header>
                        <table class="table table-striped border-top" id="sample_1">
                            <thead>
                            <tr>
                                <th style="width:8px;"><input type="checkbox" class="group-checkable"
                                                              data-set="#sample_1 .checkboxes"/></th>
                                <th>用户名</th>
                                <th class="hidden-phone">密码</th>
                                <th class="hidden-phone"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list}" var="user">
                                <tr class="odd gradeX">
                                    <td><input type="checkbox" class="checkboxes" name="checkboxes" value="1"></td>
                                    <td id="username">${user.username}</td>
                                    <td id="password">${user.password}</td>
                                    <td class="hidden-phone">
                                        <button name="change" type="button" class="btn btn-info" onclick="rem()">修改
                                        </button>
                                        <button name="delet" type="button" class="btn btn-danger">删除</button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>
<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>


<!--common script for all pages-->
<script src="js/common-scripts.js"></script>

<!--script for this page only-->
<script src="js/dynamic-table.js"></script>

<script>
    function rem() {
        var tbuser = [];
        var user = "";
        var tuser = [];
        $("table input[type=checkbox]:checked").closest("tr:gt(0)").find("td:eq(1),td:eq(2)").each(function () {
            tuser.push($(this).text());
        });
        tbuser.push(tuser.join());
        $.each(tbuser, function (n, value) {
            var v1 = value.split(",");
            $.each(v1, function (n, value) {
                if (n % 2 == 0) {
                    var username = "{" + '"' + "id" + '"' + ":" + '"",' + '"' + "username" + '":"' + value + '"' + ",";
                    user = user + username;
                } else {
                    var password = '"' + "password" + '":"' + value + '"' + "}";
                    user = user + password;
                    user = user + ","
                }
            })
        });
        user = user.substring(0, user.length - 1);
        user = "[" + user + "]";
        console.info(user);
        $.ajax({
            url: "/deleteUser",
            type: "POST",
            contentType: "application/json;charset=utf-8",
            dataType: "text",
            data: user,
            success: function (data) {
                if(data == "true") {
                    $("input[type='checkbox']:checked").each(function () {
                        var n = $(this).parents("tr").index();
                        n = n + 1;
                        $("table#sample_1").find("tr:eq(" + n + ")").remove();
                    });
                }
            },
            error: function () {
                console.info("请求失败");
            },
            complete: function () {
                console.info("触发ajax");
            }
        });
    }
</script>
</body>
</html>
