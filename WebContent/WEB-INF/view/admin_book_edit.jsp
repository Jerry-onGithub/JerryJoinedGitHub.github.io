<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit 《 ${detail.name}》</title>
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
            <h3 class="panel-title">Edit 《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
            <form action="${pageContext.request.contextPath}/book_edit_do.html?id=${detail.bookId}" method="post" id="addbook" >

                <div class="input-group">
                    <span  class="input-group-addon">Name</span>
                    <input type="text" class="form-control" name="name" id="name" value="${detail.name}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Author</span>
                    <input type="text" class="form-control" name="author" id="author" value="${detail.author}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Publish</span>
                    <input type="text" class="form-control" name="publish" id="publish"  value="${detail.publish}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">ISBN</span>
                    <input type="text" class="form-control" name="isbn" id="isbn"  value="${detail.isbn}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Introduction</span>
                    <input type="text" class="form-control" name="introduction" id="introduction"  value="${detail.introduction}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Language</span>
                    <input type="text" class="form-control" name="language" id="language" value="${detail.language}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Price</span>
                    <input type="text" class="form-control" name="price"  id="price" value="${detail.price}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Publication Date</span>
                    <input type="text" class="form-control" name="pubdate" id="pubdate" value="${detail.pubdate}">
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">Class Id</span>
                    <input type="text" class="form-control" name="classId" id="classId" value="${detail.classId}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Pressmark</span>
                    <input type="text" class="form-control" name="pressmark" id="pressmark" value="${detail.pressmark}">
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">State</span>
                    <input type="text" class="form-control" name="state"  id="state" value="${detail.state}">
                </div>
                <input type="submit" value="Submit" class="btn btn-success btn-sm" class="text-left">
                
                <script>
                    function mySubmit(flag){
                        return flag;
                    }
                    $("#addbook").submit(function () {
                        if($("#name").val()==''||$("#author").val()==''||$("#publish").val()==''||$("#isbn").val()==''||$("#introduction").val()==''||$("#language").val()==''||$("#price").val()==''||$("#pubdate").val()==''||$("#classId").val()==''||$("#pressmark").val()==''||$("#state").val()==''){
                            alert("Please fill in the full book information!");
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
