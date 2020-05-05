<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav  style="position:fixed;z-index: 999;width: 100%;background-color: #fff" class="navbar navbar-default" role="navigation" >
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/admin_main.html">Book management system</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/#" class="dropdown-toggle" data-toggle="dropdown">
                        Book management
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/allbooks.html">All books</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/book_add.html">Add books</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/#" class="dropdown-toggle" data-toggle="dropdown">
                        Reader management
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/allreaders.html">All readers</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/reader_add.html">Add readers</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/#" class="dropdown-toggle" data-toggle="dropdown">
                       Borrow management
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/lendlist.html">Borrow log</a></li>
                    </ul>
                </li>
                <li >
                    <a href="${pageContext.request.contextPath}/admin_repasswd.html" >
                        Change Password
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/login.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${admin.adminId}，is logged in.</a></li>
                <li><a href="${pageContext.request.contextPath}/logout.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>