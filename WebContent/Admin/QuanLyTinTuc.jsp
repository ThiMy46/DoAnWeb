<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý tin tức</title>
    <meta name="viewport" content="with=device-width, initial-scale=1">
    <link rel="stylesheet" href="../tool/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="../css.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
   
</head>

<body>
    <div class="container">
        <form action="">
            <img src="image/tttt.png" class="col-xs-12 col-sm-6">
            <div id="hide" class="input-group" style="width: 300px; top :20px;  position: absolute; right: 100px; ">
                <input type="text" class="form-control" placeholder="Search" name="search">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
        </form>
    </div>
 


    <div id="menu" class="sticky ">
        <nav class="navbar navbar-inverse">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu ">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<li class="navbar-brand"><span><img style="width: 70px;padding:0px ;"  src="image/logo1.png"></span></li>-->
                <div class="navbar-brand"><img style="width: 40px;padding:0px ;" src="image/logo1.png"></div>

            </div>
            <div class="navbar-collapse collapse" id="main-menu">
                <div class="nav navbar-nav">
                    <li><a href="TrangchuAD.jsp">Home</a></li>
                    <li><a href="QuanLyGiangVien.jsp">Giảng viên</a></li>
                    <li><a href="QuanLyKhoaHoc.jsp" >Khóa học</a></li>
                    <li><a href="QuanLyLopHoc.jsp" >Lớp học</a></li>
                    <li><a href="QuanLyHocVien.jsp">Học viên</a></li>
                     <li><a href="QLDiem.jsp">Điểm</a></li>
                    <li><a href="QuanLyTinTuc.jsp">Thông báo</a></li>
            <li><div id="show"   class="input-group" style="width: 200px;heght:50px;padding:10px ;" >
              <input type="text"  class="form-control" placeholder="Search" name="search">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
              </div>
              </div></li> 
          </div>
          <div class= "nav navbar-nav navbar-right">
            
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Admin<span class="caret"></span></a>
                  <ul class="id-dropdown dropdown-menu">
                    <li><a href="" data-toggle="modal">Thông Tin Tài Khoản</a></li>
                    <li><a href="" data-toggle="modal">Đăng Xuất</a></li>
                  </ul>
              </li>            
          </div>                 
        </div>            
    </nav>       
  </div>


    
    <!-- Modal thêm tin tức-->
    <div class="modal fade" id="mdthemTT" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:10px 20px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><span class="glyphicon glyphicon-plus-sign"></span> Thêm tin tức</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <form>
                       
                        <div>
                            <label> Mã tin tức</label>
                            <input type="text" placeholder="Enter ID" class="form-control" id="formuser">  <span id="errouser"></span>
                        </div>
                        <div >
                            <label> Tên tin tức</label>
                            <input type="text" placeholder="Enter name" class="form-control" id="loipass"><span id="erropass"></span>
                        </div>
                        <div >
                            <label> Nội dung</label>
                            <input type="text" placeholder="Enter name" class="form-control" id="loipass"><span id="erropass"></span>
                        </div>
                        
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-cam btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove">
                        
                        </span> Cancel</button>
                    <button type="submit" class="btn btn-success btn-default pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-plus-sign">
                        
                        </span> Thêm</button>
                   
                </div>
            </div>

        </div>
    </div><!--end thêm tin tức-->

    <!-- Modal sửatin tức-->
    <div class="modal fade" id="mdsuaTT" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:10px 20px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><span class="glyphicon glyphicon-plus-sign"></span> Thông tin</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <form>
                       
                        <div>
                            <label> Mã tin tức</label>
                            <input type="text" placeholder="Enter ID" class="form-control" id="formuser">  <span id="errouser"></span>
                        </div>
                        <div >
                            <label> Tên tin tức</label>
                            <input type="text" placeholder="Enter name" class="form-control" id="loipass"><span id="erropass"></span>
                        </div>
                        <div >
                            <label> Nội dung</label>
                            <input type="text" placeholder="Enter name" class="form-control" id="loipass"><span id="erropass"></span>
                        </div>
                        
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-cam btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove">
                        
                        </span> Cancel</button>
                    <button type="submit" class="btn btn-success btn-default pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-plus-sign">
                        
                        </span> Sửa</button>
                   
                </div>
            </div>

        </div>
    </div><!--end sửa tin tức-->
    
    
    
    <div class="container  ">
        <div id="tieude">
           <form  class="col-xs-12" action="">
                <div class="col-xs-6" style="padding:0px;">
                    <h2>QUẢN LÝ TIN TỨC</h2>
                </div>
                
          </form>
        </div>
       
           
  <table class="table table-bordered">
    <thead>
      <tr>
        
        <th>Mã tin tức</th>
        <th>Tên tin tức</th>
        
        <th>Thao tác</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Lịch khai giảng đầu năm</td>
        
        <td><a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mdsuaTT">Chỉnh sửa</button>
            <a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="#" data-target="#">Xóa</button></a></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Lịch khai giảng Thiết kế website</td>
        
        <td><a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mdsuaTT">Chỉnh sửa</button>
            <a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="#" data-target="#">Xóa</button></a></td>
      </tr>
      <tr>
        <td>3</td>
        <td>Lịch khai giảng Tin học văn phòng</td>
        
        <td><a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mdsuaTT">Chỉnh sửa</button>
            <a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="#" data-target="#">Xóa</button></a></td>
      </tr>
    </tbody>
  </table>
        
        
        <button id="btn-click" class="btn btn-success" data-toggle="modal" data-show="true" data-target="#mdthemTT">Thêm tin tức</button>

       
</div>
     <br>
    

        <div class="footer">
            <div class="container">

                <div class="col-sm-10 ">
                    <div style="overflow:hidden container">
                        <div class="col-md-4 ">
                            <div class="tenfooter">
                                <b>Trụ sở chính:</b>
                            </div>
                            <div>
                                <span class="glyphicon glyphicon-map-marker" style="width:16px">&nbsp;</span>1, Võ văn Ngân, Linh chiểu , Q.Thủ Đức
                            </div>
                            <div>
                                <span class="glyphicon glyphicon-phone-alt" style="width:16px">&nbsp;</span>0969666999
                            </div>
                        </div>
                        <div class="col-md-4 ">
                        </div>
                        <div class="col-md-4 ">
                            <div class="tenfooter">
                                <b>Liên hệ với chúng tôi:</b>
                            </div>
                            <div>
                                <i class="fa fa-facebook-square" style="font-size:24px;color:#9ACCDB"></i><a>Facebook</a>
                            </div>
                            <div>
                                <i class="fa fa-google-plus-square" style="font-size:24px;color:#9ACCDB"></i><a>Google+</a>
                            </div>
                        </div>

                    </div>
                    <div style="color:#FFF; font-style:italic; font-size:14px; padding:10px 0 15px">
                        <br>
                        Copyright © Trung Tâm Tin Học Đại học Sư Phạm Kỹ Thuật TPHCM
                    </div>
                </div>

            </div>
        </div>
    
    <!-- jQuery -->
    <script src="tool/jquery-3.2.1.min.js"></script>
    <script src="tool/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="login.js"></script>
</body>

</html>
