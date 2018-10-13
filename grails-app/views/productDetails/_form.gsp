
    <div class="col-lg-6">
        <div class="form-group ">
            <label class="control-label col-sm-4" for="productCategory">Choose Category:</label>

            <div class="col-sm-6">
                <g:select class="selectpicker" id="productCategory" name="productCategory" value="${productDetailsInstance?.productCategory?.id}"
                          from="${ProductCategory.findAllByStatusShow(true)}" optionKey="id" optionValue="categoryName" data-show-subtext="true"
                          data-live-search="true" title="choose Category "/>

            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="form-group ">
            <label class="control-label col-sm-4" for="productSubCategory">Choose Sub-Category:</label>

            <div class="col-sm-6">
                <g:select class="selectpicker" id="productSubCategory" name="productSubCategory" value="${productDetailsInstance?.productSubCategory?.id}"
                          from="${ProductSubCategory.findAllByStatusShow(true)}" optionKey="id" optionValue="subCategoryName" data-show-subtext="true"
                          data-live-search="true" title="choose Sub-Category "/>

            </div>
        </div>
    </div>



    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label col-sm-4">Name:</label>
            <div class="col-sm-6">
                <g:textField name="productName" id="productName" class="form-control" value="${productDetailsInstance?.productName}"/>


            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label col-sm-4">Choose ProductBrand:</label>
            <div class="col-sm-6">
                <g:select class="selectpicker" id="productBrand" name="productBrand" value="${productDetailsInstance?.productBrand?.id}"
                          from="${ProductBrand.findAllByStatusShow(true)}" optionKey="id" optionValue="brandName" data-show-subtext="true"
                          data-live-search="true" title="choose brand "/>

            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group">
            <label class="control-label col-sm-2">Select Sizes:</label>
            <div class="col-sm-6">
                <g:select class="selectpicker" multiple="multiple" id="productSizeId" name="productSizeId"
                          from="${ProductSize.findAllByStatusShow(true)}" optionKey="id" optionValue="sizeName" data-show-subtext="true"
                          data-live-search="true" title="choose sizes"/>


            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label col-sm-4">Price:</label>
            <div class="col-sm-6">
                <g:textField name="price" id="price" class="form-control" value="${productDetailsInstance?.price}"/>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label col-sm-4">IsSale:</label>
            <div class="col-sm-6">
                <g:select name="isSale" from="${['TRUE','FALSE']}"
                          keys="${[1,0]}" value="${productDetailsInstance?.isSale?1:0}" class="form-control"/>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <label class="control-label col-sm-4">Discount:</label>

            <div class="col-sm-5">
                <g:textField name="discountPercentage" id="discountPercentage" class="form-control" value="${productDetailsInstance?.discountPercentage}"/>
            </div>
            <label class="input-group-addon control-label col-sm-1">%</label>


        </div>
    </div>

    <div class="col-lg-12">
        <div class="form-group">
            <label class="control-label col-sm-2">Brief Description:</label>
            <div class="col-sm-6">
                <g:textArea name="briefDescription" id="briefDescription" class="form-control" value="${productDetailsInstance?.briefDescription}"/>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group">
            <label class="control-label col-sm-2">Detail Description:</label>
            <div class="col-sm-6">
                <g:textArea name="detailDescription" id="detailDescription" class="form-control" value="${productDetailsInstance?.detailDescription}"/>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            <%
            def stringArray1="${stringArray}";
                %>
            $('#productSizeId').selectpicker('val', ${stringArray1});
        });
    </script>

    <script>
        function preventMultipleSubmissions() {
            $('#submit_Id').prop('disabled', true);
        }

        window.onbeforeunload = preventMultipleSubmissions;

        function Validate() {
            var responseValue;
            var productCategory = document.getElementById("productCategory").value;
            var productSubCategory = document.getElementById("productSubCategory").value;
            var productBrand = document.getElementById("productBrand").value;
            var price = document.getElementById("price").value;
            var isSale = document.getElementById("isSale").value;
            var productName = document.getElementById("productName").value;

            var productSizeId = document.getElementById("productSizeId").value;

            var discountPercentage = document.getElementById("discountPercentage").value;
            var detailDescription = document.getElementById("detailDescription").value;
            var briefDescription = document.getElementById("briefDescription").value;

            if(price.length>0){

                var valid = (price.match(/^-?\d*(\.\d+)?$/));

                if(!valid){
                    document.getElementById("price").focus();
                    bootbox.alert({
                        message: "invalid price",
                        size: 'small'
                    });
                    return false;

                }
            }

            if(productCategory==''){
                bootbox.alert({
                    message: "Category must be selected",
                    size: 'small'
                });
                document.getElementById("productCategory").focus();
                return false;
            }
            else if(productSubCategory==''){
                bootbox.alert({
                    message: "sub-Category must be selected",
                    size: 'small'
                });
                document.getElementById("productSubCategory").focus();
                return false;
            }


            else if(productName==''){
                bootbox.alert({
                    message: "name must not be blank",
                    size: 'small'
                });
                document.getElementById("productName").focus();
                return false;
            }

            if(productBrand==''){
                bootbox.alert({
                    message: "brand must be selected",
                    size: 'small'
                });
                document.getElementById("productBrand").focus();
                return false;
            }
            else if(productSizeId==''){
                bootbox.alert({
                    message: "size must be selected",
                    size: 'small'
                });
                document.getElementById("productSizeId").focus();
                return false;
            }

            else if(price==''){
                bootbox.alert({
                    message: "price must not be blank",
                    size: 'small'
                });
                document.getElementById("price").focus();
                return false;
            }

            else if(isSale=='1') {

                if (discountPercentage == '') {

                    bootbox.alert({
                        message: "discount must be given for sale items",
                        size: 'small'
                    });
                    document.getElementById("discountPercentage").focus();
                    return false;
                }
               else if(discountPercentage.length>0){

                    var valid1 = (discountPercentage.match(/^-?\d*(\.\d+)?$/));

                    if(!valid1){
                        document.getElementById("discountPercentage").focus();
                        bootbox.alert({
                            message: "invalid discount",
                            size: 'small'
                        });
                        return false;

                    }
                    else if(discountPercentage<0 || discountPercentage>=100 || discountPercentage==0){
                        document.getElementById("discountPercentage").focus();
                        bootbox.alert({
                            message: "discount % must be between 0 and 100",
                            size: 'small'
                        });
                        return false;

                    }
                }



            }
            if(briefDescription==''){
                bootbox.alert({
                    message: "brief Description must not be blank",
                    size: 'small'
                });
                document.getElementById("briefDescription").focus();
                return false;
            }

            else if(detailDescription==''){
                bootbox.alert({
                    message: "detail description must not be blank",
                    size: 'small'
                });
                document.getElementById("detailDescription").focus();
                return false;
            }
            if(productName.length>0){
                var id;

                if($("#productId").length == 0){
                    id=null;
                }
                else{
                    id=document.getElementById("productId").value;

                }
                $.ajax({
                    url: "${createLink(controller:'productDetails', action:'checkProductName')}",
                    type: "POST",
                    data: {"productName":productName,"id":id,categoryId:productCategory},
                    cache: false,
                    async: false,
                    success: function (result) {
                        if(result=="notOk"){
                            bootbox.alert({
                                message: "product name already exists",
                                size: 'small'
                            });
                            document.getElementById("productName").focus();
responseValue=false;
                        }
                        else{
                            responseValue=true;
                        }

                    }
                });
                return responseValue

            }




        }

    </script>

