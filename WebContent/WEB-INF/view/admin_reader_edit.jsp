<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit 《 ${readerInfo.readerId}》</title>
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

<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 10%">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Edit 《 ${readerInfo.readerId}》</h3>
        </div>
        <div class="panel-body">
            <form action="${pageContext.request.contextPath}/reader_edit_do.html?id=${readerInfo.readerId}" method="post" id="readeredit" >

                <div class="input-group">
                    <span  class="input-group-addon">Reader Id</span>
                    <input readonly="readonly" type="text" class="form-control" name="readerId" id="readerId" value="${readerInfo.readerId}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Name</span>
                    <input type="text" class="form-control" name="name" id="name" value="${readerInfo.name}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Sex</span>
                    <input type="text" class="form-control" name="sex" id="sex"  value="${readerInfo.sex}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Birth</span>
                    <input type="text" class="form-control" name="birth" id="birth"  value="${readerInfo.birth}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Address</span>
                    <input type="text" class="form-control" name="address" id="address"  value="${readerInfo.address}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Telephone</span>
                    <input type="text" class="form-control" name="telcode" id="telcode" value="${readerInfo.telcode}" >
                </div>
                <input type="submit" value="Submit" class="btn btn-success btn-sm" class="text-left">
                
                <script>
                    function mySubmit(flag){
                        return flag;
                    }
                    $("#readeredit").submit(function () {
                        if($("#name").val()==''||$("#author").val()==''||$("#publish").val()==''||$("#isbn").val()==''||$("#introduction").val()==''||$("#language").val()==''||$("#price").val()==''||$("#pubdate").val()==''||$("#classId").val()==''||$("#pressmark").val()==''||$("#state").val()==''){
                            alert("Please fill in the complete reader information！");
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
