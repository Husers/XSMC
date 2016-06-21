<%--
  Created by IntelliJ IDEA.
  User: HuLiang
  Date: 16-6-12
  Time: 下午4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

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
    <a href="#" class="logo" >Flat<span>lab</span></a>
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
    <div id="sidebar"  class="nav-collapse ">
      <!-- sidebar menu start-->
      <ul class="sidebar-menu">
        <li class="sub-menu active">
          <a href="javascript:;" class="">
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
              新增用户
            </header>
            <div class="panel-body">
              <div class="form">
                <form class="cmxform form-horizontal tasi-form" id="commentForm" method="POST" action="/addUser">
                  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">账号</label>
                    <div class="col-lg-10">
                      <input class=" form-control" id="cname" name="username" minlength="2" type="text" required />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="cemail" class="control-label col-lg-2">密码</label>
                    <div class="col-lg-10">
                      <input class="form-control " id="cemail" name="password" type="password"  required />
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-danger" type="submit">新增</button>
                      <button class="btn btn-default" type="button">取消</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
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


<!--common script for all pages-->
<script src="js/common-scripts.js"></script>


</body>
</html>
