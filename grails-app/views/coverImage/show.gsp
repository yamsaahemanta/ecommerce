<%--
  Created by IntelliJ IDEA.
  User: Hemanta
  Date: 3/13/2017
  Time: 12:11 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminYamsaa">

    <title></title>
</head>

<body>
<g:link action="create" controller="coverImage" class="btn btn-primary navbar-btn">New</g:link>
<g:link action="list" controller="coverImage" class="btn btn-primary navbar-btn">List</g:link>
<form class="form-horizontal">
    <div class="col-lg-12">
        <div class="form-group ">
            <label class="control-label col-sm-2">Image:</label>
            <div class="col-sm-6">
                <img src="${resource(dir: "images/coverImage",file: "${coverImageInstance.imageName}")}" height="100" style="margin-left: -1%">

                <div style="margin-top: 7px;">${coverImageInstance.imageName}</div>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group ">
            <label class="control-label col-sm-2">Show Status:</label>
            <div class="col-sm-6">
                <div style="margin-top: 7px;">${coverImageInstance.statusShow}</div>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group ">
            <label class="control-label col-sm-2">where to Slide?:</label>
            <div class="col-sm-6">
                <div style="margin-top: 7px;">${coverImageInstance.slidePlace}</div>
            </div>
        </div>
    </div>

</form>
<div class="col-lg-12">
    <g:link action="edit" id="${coverImageInstance?.id}" controller="coverImage" class="btn btn-primary navbar-btn">Edit</g:link>
    <g:link action="delete" id="${coverImageInstance?.id}" controller="coverImage" class="btn btn-primary navbar-btn">Delete</g:link>

</div>
</body>
</html>