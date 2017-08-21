<!DOCTYPE html>
<html lang="en">

<head>

    <meta name="layout" content="userYarsaa">

</head>

<body>
<!-- *** TOPBAR ***
 _________________________________________________________ -->

<!-- *** TOP BAR END *** -->

<!-- *** NAVBAR ***
 _________________________________________________________ -->

<!-- /#navbar -->

<!-- *** NAVBAR END *** -->


<div id="content">

    <div class="container">

        <div class="col-md-12">
            <ul class="breadcrumb">
                <li><g:link action="userHome" controller="endUser">Home</g:link>
                </li>
                <li>season</li>

                <li>${seasonInstance.seasonName}</li>
            </ul>



            <div class="box b">
                <h1>${seasonInstance.seasonName}</h1>
                <p>${SeasonManagement.list()[0].preAdvertiseDescription}</p>
            </div>

            %{--<div class="box info-bar">--}%
            %{--<div class="row">--}%
            %{--<div class="col-sm-12 col-md-4 products-showing">--}%
            %{--Showing <strong>12</strong> of <strong>${productList.size()}</strong> products--}%
            %{--</div>--}%

            %{--<div class="col-sm-12 col-md-8  products-number-sort">--}%
            %{--<div class="row">--}%
            %{--<form class="form-inline">--}%
            %{--<div class="col-md-6 col-sm-6">--}%
            %{--<div class="products-number">--}%
            %{--<strong>Show</strong>  <a href="#" class="btn btn-default btn-sm btn-primary">12</a>  <a href="#" class="btn btn-default btn-sm">24</a>  <a href="#" class="btn btn-default btn-sm">All</a> products--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--<div class="col-md-6 col-sm-6">--}%
            %{--<div class="products-sort-by">--}%
            %{--<strong>Sort by</strong>--}%
            %{--<select name="sort-by" class="form-control">--}%
            %{--<option>Price</option>--}%
            %{--<option>Name</option>--}%
            %{--<option>Sales first</option>--}%
            %{--</select>--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--</form>--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--</div>--}%

            <div class="row products" id="myList">
                <g:each in="${productList}" var="list" status="i">
                    <g:if test="${list.productDetails.isSale==false}">
                        <div class="col-md-3 col-sm-4 a">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front product">
                                            <g:link action="singleProduct" controller="endUser" id="${list.productId}">
                                                <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive">


                                            </g:link>
                                        </div>
                                        <div class="back product">
                                            <g:link action="singleProduct" controller="endUser" id="${list.productId}">
                                                <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive">


                                            </g:link>
                                        </div>
                                    </div>
                                </div>
                                <g:link action="singleProduct" controller="endUser" id="${list.productId}" class="invisible product">
                                    <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive">

                                </g:link>
                                <div class="text">
                                    <h3><g:link action="singleProduct" controller="endUser" id="${list.productId}">${list.productColor.colorName+" "+list.productDetails.productBrand.brandName+" "+list.productDetails.productName}</g:link></h3>
                                    <p class="price"> Rs.<g:formatNumber number="${list.productDetails.price-(list.productDetails.discountPercentage*list.productDetails.price/100)}" type="number" maxFractionDigits="2" /><br>
                                        <del class="del-price" style="visibility:hidden;">Rs.${list.productDetails.price}</del></p>
                                    <p class="buttons">
                                        <g:link action="singleProduct" controller="endUser" id="${list.productId}" class="btn btn-default">View detail</g:link>
                                        <a href="#" data-toggle="modal" data-target="#smallModal${i}"  class="btn btn-primary" onclick="addValueToField(${list.id});"><i class="fa fa-shopping-cart"></i>Add to cart</a>

                                    </p>
                                </div>
                                <g:if test="${list.isLatest==true}">
                                    <div class="ribbon new">
                                        <div class="theribbon">NEW</div>
                                        <div class="ribbon-background"></div>
                                    </div>
                                </g:if>

                            <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                    </g:if>
                    <g:if test="${list.productDetails.isSale==true}">

                        <div class="col-md-3 col-sm-4 a">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front product">
                                            <g:link action="singleProduct" controller="endUser" id="${list.productId}">
                                                <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive">

                                            </g:link>
                                        </div>
                                        <div class="back product">
                                            <g:link action="singleProduct" controller="endUser" id="${list.productId}">

                                                <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive">

                                            </g:link>
                                        </div>
                                    </div>
                                </div>
                                <g:link action="singleProduct" controller="endUser" id="${list.productId}" class="invisible product">
                                    <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive">

                                </g:link>
                                <div class="text">
                                    <h3><g:link action="singleProduct" controller="endUser" id="${list.productId}">${list.productColor.colorName+" "+list.productDetails.productBrand.brandName+" "+list.productDetails.productName}</g:link></h3>
                                    <p class="price"> Rs.<g:formatNumber number="${list.productDetails.price-(list.productDetails.discountPercentage*list.productDetails.price/100)}" type="number" maxFractionDigits="2" /><br>

                                        <del class="del-price">Rs.${list.productDetails.price}</del></p>
                                    <p class="buttons">
                                        <g:link action="singleProduct" controller="endUser" id="${list.productId}" class="btn btn-default">View detail</g:link>
                                        <a href="#" data-toggle="modal" data-target="#smallModal${i}"  class="btn btn-primary" onclick="addValueToField(${list.id});"><i class="fa fa-shopping-cart"></i>Add to cart</a>

                                    </p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon sale">
                                    <div class="theribbon">SALE</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <!-- /.ribbon -->

                                %{--<div class="ribbon new">--}%
                                %{--<div class="theribbon">NEW</div>--}%
                                %{--<div class="ribbon-background"></div>--}%
                                %{--</div>--}%
                                %{--<!-- /.ribbon -->--}%

                                %{--<div class="ribbon gift">--}%
                                %{--<div class="theribbon">GIFT</div>--}%
                                %{--<div class="ribbon-background"></div>--}%
                                %{--</div>--}%
                                %{--<!-- /.ribbon -->--}%
                            </div>
                            <!-- /.product -->
                        </div>
                    </g:if>
                </g:each>
            <!-- /.col-md-4 -->
            </div>
            <!-- /.products -->
            <div class="pages">

                <p class="loadMore">
                    <a class="btn btn-primary btn-lg" id="loadMore"><i class="fa fa-chevron-down"></i> Load more</a>
                </p>
                <p class="loadLess">
                    <a class="btn btn-primary btn-lg" id="showLess"><i class="fa fa-chevron-up"></i> Show less</a>
                </p>

            <g:hiddenField name="productId" id="productId" value=""></g:hiddenField>
            <g:each in="${productSizeList}" var="list" status="i">
                <div class="modal fade" id="smallModal${i}" tabindex="-1" role="dialog" aria-labelledby="smallModal" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel${i}">Select Size</h4>
                            </div>
                            <div class="modal-body">
                                <g:select class="form-control" name="size" id="size${i}"
                                          from="${list}" optionKey="id" optionValue="sizeName"
                                          title="select size"/>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                                <div class="btn btn-primary" onclick="checkAddToCart(${i});"><i class="fa fa-shopping-cart"></i>Add to cart</div>
                            </div>
                        </div>
                    </div>
                </div>
            </g:each>

                %{--<ul class="pagination">--}%
                %{--<li><a href="#">&laquo;</a>--}%
                %{--</li>--}%
                %{--<li class="active"><a href="#">1</a>--}%
                %{--</li>--}%
                %{--<li><a href="#">2</a>--}%
                %{--</li>--}%
                %{--<li><a href="#">3</a>--}%
                %{--</li>--}%
                %{--<li><a href="#">4</a>--}%
                %{--</li>--}%
                %{--<li><a href="#">5</a>--}%
                %{--</li>--}%
                %{--<li><a href="#">&raquo;</a>--}%
                %{--</li>--}%
                %{--</ul>--}%
            </div>




            <!-- /.col-md-9 -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->
</div>

<!-- *** FOOTER ***
 _________________________________________________________ -->
<!-- /#footer -->

<!-- *** FOOTER END *** -->




<!-- *** COPYRIGHT ***
 _________________________________________________________ -->
<!-- *** COPYRIGHT END *** -->



<!-- /#all -->





<script>
    $(document).ready(function () {
        var size_li = $("#myList .a").size();
        var x=8;
        var c;
        var b=8;
        var a=0;
        if($("#myList .a").size()<=8){
            $("#loadMore").hide();

        }
        $('#myList .a:lt('+x+')').show();
        $('#loadMore').click(function () {
            $('html, body').animate({
                scrollTop: $(".loadMore").offset().top
            }, 2000);
            x= (x+4 <= size_li) ? x+4 : size_li;
            $('#myList .a:lt('+x+')').show();
            a=a+1;
            b=b+4;
            c=8+(4*a);
            if(b>=size_li){
                $("#loadMore").hide();

            }
            if(a>0){
                $("#showLess").show();
            }

        });
        $('#showLess').click(function () {
            if(c==x+3){
                x=(x-1<0) ? 8 : x-1;
                $('#myList .a').not(':lt('+x+')').hide();
                c=x;
            }
            else if(c==x+2){
                x=(x-2<0) ? 8 : x-2;
                $('#myList .a').not(':lt('+x+')').hide();
                c=x;
            }
            else if(c==x+1){
                x=(x-3<0) ? 8 : x-3;
                $('#myList .a').not(':lt('+x+')').hide();
                c=x;
            }

            else{
                x=(x-4<0) ? 8 : x-4;
                $('#myList .a').not(':lt('+x+')').hide();
            }
            a=a-1;
            b=b-3;

            if(a==0){
                $("#showLess").hide();
            }
            if(b<size_li){
                $("#loadMore").show();

            }

            $('html, body').animate({
                scrollTop: $(".a").offset().top
            }, 2000);

        });
        $("#showLess").hide();


    });
</script>
<g:if test="${productList}">
<script>
    $(document).ready(function () {

        $('html, body').animate({
        scrollTop: $(".b").offset().top
    }, 2000);
    });

</script>
</g:if>
<style>
#myList .a{ display:none;
}
/*#loadMore {*/
/*color:green;*/
/*cursor:pointer;*/
/*}*/
/*#loadMore:hover {*/
/*color:black;*/
/*}*/
/*#showLess {*/
/*color:red;*/
/*cursor:pointer;*/
/*}*/
/*#showLess:hover {*/
/*color:black;*/
/*}*/
</style>

<style>
.product img{
    height:338px;
    width:251px;
}
</style>



<script>
    function addValueToField(id){
        document.getElementById("productId").value = id;

    }
</script>

<script>
    function checkAddToCart(i){
        $('#smallModal'+i).modal('toggle');
        var productId=document.getElementById("productId").value;
        var sizeId=document.getElementById("size"+i).value;
        var array = [];
        array[0]=sizeId;
        array[1]=productId;
        var responseValue;
        $.ajax({
            url: "${createLink(controller:'cart', action:'checkAddToCart')}",
            type: "POST",
            data: { "array": JSON.stringify(array) },
            async : false,
            cache:false,
            success: function(result) {
                if(result=="ok"){
                    bootbox.alert({
                        message: "successfully added to cart.",
                        size: 'small',
                        callback: function(){
                            $('#cartShow').load(document.URL +  ' #cartShow');

                        }

                    });
                    responseValue=false;

                }
                else if(result=="notOk"){
                    $('#login-modal').modal('toggle');
                    document.getElementById("sizeIdLogin").value = sizeId;
                    document.getElementById("productIdLogin").value = productId;

                }
            }
        });
        return responseValue;

    }
</script>

</body>

</html>