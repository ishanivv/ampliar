
<%@include file='layout/header.jsp'%>

<!-- Start Site Header --><!-- Start Site Header -->
<%@include file='layout/site_header_wrapper.jsp'%>
<!-- END Site Header -->

<!-- Start Body Content -->
<div class="main" role="main">
    <div id="content" class="content full padding-b0">
    </div>

    <div id="content" class="content full padding-b0">
        <div class="container">
            <!-- Welcome Content and Services overview -->
            <div class="row">
                <div class="col-md-6">
                    <h1 class="uppercase strong">Sell Your Item<br></h1>
                    <p class="lead">By creating an Advertisement<br>easy and quick </p>
                </div>
                <div class="col-md-6 col-sm-6 text-center">
                    <h3>Advertisement Details</h3>
                    <form action="/ampliar/services/sell.jsp" method="post">
                        <div class="col-md-12 col-sm-12 text-center">
                            <label for="ad_name">Advertisement Name</label>
                            <input type="text" name="ad_name" id="ad_name" class="form-control">
                        </div>
                        <div class="col-md-12 col-sm-12 text-center">
                            <label for="ad_price">Advertisement Price</label>
                            <input type="text" name="ad_price" id="ad_price" class="form-control">
                        </div>
                        <div class="col-md-12 col-sm-12 text-center">
                            <label for="ad_name">Category</label>
                            <input type="text" name="category" id="category" class="form-control">
                        </div>
                        <div class="col-md-12 col-sm-12 text-center">
                            <label for="sub_category">Sub Category</label>
                            <input type="text" name="sub_category" id="sub_category" class="form-control">
                        </div>
                        <div class="col-md-12 col-sm-12 text-center">
                            <button id="save_ad_button" class="btn btn-success" onclick="saveAdvertisement();" type="submit" value="Save">Save</<button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div id="content" class="content full padding-b0">
    </div>
    <!-- End Body Content -->

    <%@include file='layout/footer.jsp'%>