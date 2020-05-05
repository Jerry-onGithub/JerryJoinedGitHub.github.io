<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
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

<div style="position: relative;top: 10%;width: 80%;margin-left: 10%">
            <form action="${pageContext.request.contextPath}/book_add_do.html" method="post" id="addbook" >
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="author">Author</label>
                    <input type="text" class="form-control" name="author" id="author"  placeholder="Author">
                </div>
                <div class="form-group">
                    <label for="publish">Publish</label>
                    <input type="text" class="form-control"  name="publish" id="publish"  placeholder="Publish">
                </div>
                <div class="form-group">
                    <label for="isbn">ISBN</label>
                    <input type="text" class="form-control" name="isbn" id="isbn"  placeholder="ISBN">
                </div>
                <div class="form-group">
                    <label for="introduction">Introduction</label>
                    <textarea class="form-control" rows="3"  name="introduction" id="introduction" placeholder="Introduction"></textarea>
                </div>
                <div class="form-group">
                    <label for="language">Language</label>
                    <input type="text" class="form-control" name="language" id="language"  placeholder="Language">
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="text" class="form-control"  name="price"  id="price" placeholder="Price">
                </div>
                <div class="form-group">
                    <label for="pubdate">Publication Date</label>
                    <input type="text" class="form-control"  name="pubdate" id="pubdate"   placeholder="Publication Date">
                </div>
                <div class="form-group">
                    <label for="classId">Class Id</label>
                    <input type="text" class="form-control" name="classId" id="classId"  placeholder="Class ID">
                </div>
                <div class="form-group">
                    <label for="pressmark">Pressmark</label>
                    <input type="text" class="form-control"  name="pressmark" id="pressmark" placeholder="Pressmark">
                </div>
                <div class="form-group">
                    <label for="state">State</label>
                    <input type="text" class="form-control"  name="state"  id="state"   placeholder="State">
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



</body>
</html>
