<div id="main">
  <div class="container">
    <div class="header row-fluid">
    <div class="logo"> <a href="index.html"><span>Start</span><span class="icon"></span></a> </div>
    <div class="top_right">
      <ul class="nav nav_menu">
        <li class="dropdown"> <a class="dropdown-toggle administrator" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="../../page.html">
          <div class="title"><span class="name">George</span><span class="subtitle">Future Buyer</span></div>
          <span class="icon"><img src="<?=base_url().ASSETS_PATH?>img/thumbnail_george.jpg"></span></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a href="profile.html"><i class=" icon-user"></i> My Profile</a></li>
            <li><a href="forms_general.html"><i class=" icon-cog"></i>Settings</a></li>
            <li><a href="index2.html"><i class=" icon-unlock"></i>Log Out</a></li>
            <li><a href="search.html"><i class=" icon-flag"></i>Help</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- End top-right -->
  </div>
    <div id="main_container">
     <form class="form-horizontal" action="#">
      <div class="row-fluid">
        <div class="span8">
          <div class="box paint color_3">
            <div class="title">
              <div class="row-fluid">
                <h4> Regular tabs </h4>
              </div>
            </div>
            <!-- End .title -->
            <div class="content">
              <ul id="tabExample1" class="nav nav-tabs">
                <li class="active"><a href="#details" data-toggle="tab">Details</a></li>
                <li><a href="#categories" data-toggle="tab">Categories</a></li>
                <li><a href="#options" data-toggle="tab">Options</a></li>
                <li><a href="#related-products" data-toggle="tab">Related Products</a></li>
                <li><a href="#images" data-toggle="tab">Images</a></li>
              </ul>
              <div class="tab-content">
                <!--TAB ONE START-->
                <div class="tab-pane fade in active" id="details">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <input type="text" id="normal-field" name="name" class="row-fluid" placeholder="Product Name">
                      </div>
                    </div>
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <textarea name="description" cols="40" rows="10" class="row-fluid autogrow" id="elastic-textarea"></textarea>
                      </div>
                    </div>
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <textarea name="excerpt" cols="40" rows="5" class="row-fluid autogrow" id="elastic-textarea" placeholder="Add Excerpt Here...."></textarea>
                      </div>
                    </div>
                    <h1>SEO Information</h1>
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <label for="slug">URL Keyword </label>
                        <input type="text" name="slug" value="" class="span8">
                        <label for="seo_title">Title Tag </label>
                        <input type="text" name="seo_title" value="" class="span8">
                        <label for="meta">Meta Tags <i>ex. &lt;meta name="description" content="We sell products that help you" /&gt;</i></label>
                        <textarea name="meta" cols="40" rows="10"  cols="40" rows="10" class="row-fluid autogrow" id="elastic-textarea">
                        </textarea>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- TAB ONE END-->
                <!-- TAB TWO START-->
                <div class="tab-pane fade" id="categories">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <label class="control-label span3" for="inputEmail"><span class="help-block"></span></label>
                      <div class="controls span14">
                        <select data-placeholder="Choose Multiple Categories For Course" class="chzn-select" name="category_list" multiple="" tabindex="5">
                          <option value="United States">United States</option>
                          <option value="United Kingdom">United Kingdom</option>
                          <option value="Afghanistan">Afghanistan</option>
                          <option value="Albania">Albania</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- TAB TWO END-->
                <!-- TAB THREE START-->
                <div class="tab-pane fade" id="options">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <select data-placeholder="Choose Multiple Related Courses" class="chzn-select" name="product_list" multiple="" tabindex="5">
                          <option value="United States">United States</option>
                          <option value="United Kingdom">United Kingdom</option>
                          <option value="Afghanistan">Afghanistan</option>
                          <option value="Albania">Albania</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- TAB THREE END-->
                <!-- TAB FOUR START-->
                <div class="tab-pane fade" id="related-products">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <select data-placeholder="Choose Multiple Related Courses" class="chzn-select" name="product_list" multiple="" tabindex="5">
                          <option value="United States">United States</option>
                          <option value="United Kingdom">United Kingdom</option>
                          <option value="Afghanistan">Afghanistan</option>
                          <option value="Albania">Albania</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- TAB FOUR END-->
                <!-- TAB FIVE START-->
                <div class="tab-pane fade" id="images">
                  <div class="content">
                    <form action="http://localhost/ukopen/admin/products/product_image_upload" class="form-horizontal row-fluid" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                      <div class="form-row control-group row-fluid">
                        <label class="control-label span3" for="search-input">File upload</label>
                        <div class="controls span7">
                          <div class="input-append row-fluid">
                            <input type="file" class="spa1n6 fileinput" name="userfile" value="" id="search-input">
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- TAB FIVE END-->
              </div>
            </div>
            <!-- End .content -->
          </div>
          <!-- End  .box -->
        </div>
        <div class="span3">
          <div class="box paint color_2">
            <div class="title">
              <h4><span>Options</span> </h4>
            </div>
            <div class="content ">             
                <div class="form-row control-group row-fluid">
                  <div class="controls span12">
                    <select  class="chzn-select" id="default-select">
                      <option value="Bender">Bender</option>
                      <option value="Zapp Brannigan">Zapp Brannigan</option>
                      <option value="Zoidberg">Zoidberg</option>
                      <option value="Kif Kroker">Kif Kroker</option>
                    </select>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <div class="controls span12">
                    <input class="span12" type="text" placeholder="Price">
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
      </form>
    </div>
    <!-- End #container --> 
  </div>