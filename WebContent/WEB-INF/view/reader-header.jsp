<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-default" role="navigation" style="background-color:#fff">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand " href="${pageContext.request.contextPath}/reader_main.html">
            Library</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="active">
                    <a href="${pageContext.request.contextPath}/reader_querybook.html" >
                        Book inquiry
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/reader_info.html" >
                        Personal information
                    </a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/mylend.html" >
                        My loan
                    </a>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/reader_repasswd.html" >
                        Change password
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/reader_info.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${readercard.name}，is logged in.</a></li>
                <li><a href="${pageContext.request.contextPath}/login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>