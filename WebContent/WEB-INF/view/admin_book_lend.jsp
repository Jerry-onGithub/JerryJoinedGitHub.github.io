<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lend 《 ${book.name}》</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" ></script>
    <style>
        body{
            background-color: rgb(240,242,245);
        }
    </style>

</head>
<body>

<%@include file="admin-header.jsp" %>

<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 25%">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Lend 《 ${book.name}》</h3>
        </div>
        <div class="panel-body">
            <form action="${pageContext.request.contextPath}/lendbookdo.html?id=${book.bookId}" method="post" id="lendbook" >
                <div class="input-group">
                    <span  class="input-group-addon">Name</span>
                    <input type="text" readonly="readonly" class="form-control" name="name" id="name" value="${book.name}">
                </div>
                <br/>
                <div class="input-group">
                    <span class="input-group-addon">ReaderId</span>
                    <input type="text" class="form-control" name="readerId" id="readerId" placeholder="Input reader Id" >
                </div>
                <br/>
                <input type="submit" value="Submit" class="btn btn-success btn-sm" class="text-left">
                
                <script>
                    function mySubmit(flag){
                        return flag;
                    }
                    $("#lendbook").submit(function () {
                        if($("#name").val()==''||$("#readerId").val()==''){
                            alert("Please fill in the full book information！");
                            return mySubmit(false);
                        }
                    })
                </script>
            </form>
        </div>
    </div>

</div>

</body>
</html>
