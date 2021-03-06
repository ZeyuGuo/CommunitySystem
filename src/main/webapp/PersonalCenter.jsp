<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 2019/2/27
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>PersonalCenter</title>
    <link href="/css/bootstrap-old.css" rel="stylesheet" type="text/css" />
    <link href="/css/adminManagePage.css" rel="stylesheet" type="text/css" />
    <style>
        .myformat{
            padding: 5px 10px;
            background: #00b0f0;
            color: #FFF;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<script>
    var errorInfo="${error}";
    if(errorInfo.trim().length!=0){
        //alert(a.trim());
        //alert(a.size);
        //alert(a.trim().length);
        alert("${error}");
    }
    var successInfo="${success}";
    if(successInfo.trim().length!=0){
        alert("${success}");
    }
    <c:remove var="success" scope="session"></c:remove>
    <c:remove var="error" scope="session"></c:remove>
</script>
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index.jsp">MainPage</a>
    <p class=" navbar-link col-sm-3 " style="font-size:20px; color:#FFF">CommunitySystem-PersonalCenter</p>

    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="javascript:window.history.back(-1)">Back</a>
        </li>
    </ul>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href="/logout">Sign out</a>
        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="PersonalCenter.jsp">
                            <span data-feather="home"></span>
                            PersonalCenter<span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ManageMyArticle.jsp">
                            <span data-feather="file"></span>
                            ManageMyArticle
                        </a>
                    </li>
                </ul>

            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <div class="table-responsive">

                    <!--上传头像-->
                    <br>

                    <div>
                        <p>&nbsp;&nbsp;原头像</p>
                        <img src="${user.imgpath}" width="72" height="72">
                    </div>
                    <br><br><br>
                    <div>
                    <form action="/uploadImg" method="post" enctype="multipart/form-data">
                        <div><input  type="file" name="images" class="myformat"></div><br><br>
                        <button class="btn btn-sm btn-success"  type="submit"  name="upload">修改头像</button>
                    </form>
                    </div>

                    <div>

                        <br><br><hr><br><br>

                    <form method="post" action="/updatePassword">
                        <div>

                            <div class="mb-3">
                                <label for="oldPassword">旧密码</label>
                                <input type="password" style="width: 300px"  class="form-control" id="oldPassword" name="oldPassword" placeholder="oldPassword" required>
                                <br />
                            </div>

                        <div class="mb-3">
                            <label for="password">新密码</label>
                            <input type="password" style="width: 300px"  class="form-control" id="password" name="password" placeholder="password" required>
                            <br />
                        </div>

                        <div class="mb-3">
                            <label for="confirm">确认新密码</label>
                            <input type="password"  style="width: 300px" class="form-control" id="confirm" name="confirm" placeholder="confirm password" required>
                            <br />
                        </div>
                        </div>
                        <button class="btn btn-sm btn-info" type="submit">修改密码</button>
                    </form>
                    </div>
                </div>
            </div>





        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="/js/feather.min.js"></script>
<script>
    feather.replace()
</script>
</body>
</html>