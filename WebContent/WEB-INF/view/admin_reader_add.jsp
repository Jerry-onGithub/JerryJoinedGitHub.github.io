<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Reader</title>
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
            <h3 class="panel-title">Add Reader</h3>
        </div>
        <div class="panel-body">
            <form action="${pageContext.request.contextPath}/reader_add_do.html" method="post" id="readeredit" >
                <div class="input-group">
                    <span  class="input-group-addon">Reader Id</span>
                    <input  type="text" class="form-control" name="readerId" id="readerId" >
                </div>

                <div class="input-group">
                    <span class="input-group-addon">Name</span>
                    <input type="text" class="form-control" name="name" id="name"  >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Sex</span>
                    <input type="text" class="form-control" name="sex" id="sex" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Birth</span>
                    <input type="text" class="form-control" name="birth" id="birth"  >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Address</span>
                    <input type="text" class="form-control" name="address" id="address"  >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Telephone</span>
                    <input type="text" class="form-control" name="telcode" id="telcode"  >
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
