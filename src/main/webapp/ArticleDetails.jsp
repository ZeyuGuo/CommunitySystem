<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 2019/3/1
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ArticleDetails</title>
    <link href="/css/bootstrap-old.css" rel="stylesheet" type="text/css" />
    <link href="/css/adminAlter.css" rel="stylesheet" type="text/css" />
    <link href="/css/form-validation.css" rel="stylesheet" type="text/css" />
</head>
<body>

<script>
    var successInfo="${success}";
    if(successInfo.trim().length!=0){
        alert("${success}");
    }
</script>


<header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">ArticleDetails</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
        </div>

        <div align="right">
            <a class="nav-link" href="index.jsp">Back</a>
        </div>
        <div align="right">
            <a class="nav-link" href="/logout">Sign Out</a>
        </div>

    </nav>
</header>

<!-- Begin page content -->
<main role="main" class="container">
    <!--
     <p class="lead">Pin a fixed-height footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code>padding-top: 60px;</code> on the <code>body &gt; .container</code>.</p>
     <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p>-->

    <h2 class="mt-5" align="center">${detail.title}</h2>
    <br>
    <hr>
    ${detail.content}
    <hr>
    <div align="left">
    <div align="right">来自：${detail.authorname}</div>
    <div align="right">时间：${detail.publishtime}</div>
    </div>

</main>

<c:if test="${not empty detail}">
    <c:remove var="detail" scope="session"></c:remove>
</c:if>
<!-- <footer class="footer">
   <div class="container">
     <span class="text-muted">Place sticky footer content here.</span>
   </div>
 </footer>-->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="/js/bootstrap.min.js"></script>
</body>
</html>
