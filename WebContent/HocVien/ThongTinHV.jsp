<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Học viên</title>
  <meta name ="viewport" content="with=device-width, initial-scale=1">
    <link rel="stylesheet" href="../tool/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="../css.css" type="text/css" rel="stylesheet" />
    <link href="type.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    
</head>
<body>
  <!--Logo-->
    <div  class="container" >
      <form action="">
        <img  src="image/tttt.png" class="col-xs-12 col-sm-6">
        <div id="hide"  class="input-group" style="width: 300px; top :20px;  position: absolute; right: 100px; " >
          <input type="text"  class="form-control" placeholder="Search" name="search">
            <div class="input-group-btn">
              <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
      </form>
    </div>

    <!--Thanh menu-->
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
                            <li><a href="ThongTinHV">Thông tin</a></li>                    
                    <li><a href="LichHocHV.jsp">Lịch học</a></li>
                    <li><a href="XemDiem.jsp">Xem điểm</a></li>
                    <li><a href="../TinTuc.jsp">Tin tức</a></li>
                                     
                    <li>
                        <div id="show" class="input-group" style="width: 200px;heght:50px;padding:10px ;">
                            <input type="text" class="form-control" placeholder="Search" name="search">
                            <div class="input-group-btn">
                                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>
                    </li>
                </div>
               <div class= "nav navbar-nav navbar-right">
            
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Học viên<span class="caret"></span></a>
                  <ul class="id-dropdown dropdown-menu">
                    <li><a href="" data-toggle="modal">Thông Tin Tài Khoản</a></li>
                    <li><a href="" data-toggle="modal">Đăng Xuất</a></li>
                  </ul>
              </li>            
          </div>                 
        </div>            
    </nav>       
  </div>

    <!-- Content-->
   <div class="container-fluid">
    <div class="container">
      <div class="row">   
        <div class="col-sm-2">
          <div class="jumbotron1">
              <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Trang của bạn</a></li>        
                <li><a href="#"><span class="glyphicon glyphicon-user"></span>Thông tin cá nhân</a></li>
                <li><a href="lichhoc.html"><span class="glyphicon glyphicon-calendar"></span>Lịch Học</a></li>              
                <li><a href="xemdiemnhap.html"><span class="glyphicon glyphicon-eye-open"></span>Xem điểm</a></li>
                <li><a href="#Modal_RePassword" data-toggle="modal"><span class="glyphicon glyphicon-chevron-right"></span>Đổi mật khẩu</a></li>        
                <li><a href="#mddangky" data-toggle="modal"><span class="glyphicon glyphicon-pencil"></span>Đăng ký khóa học</a></li>           
                <li><a href="#"><span class="glyphicon glyphicon-remove-sign"></span>Thoát</a></li>
              </ul>
          </div>
        </div>
        <div class="col-sm-7 navbar-center" id="thong-tin">
          <div class="jumbotron2">
           
                    <h2>THÔNG TIN CÁ NHÂN</h2>
         
              <table class="table table-bordered">
			    <thead>
			      <tr>
			      	
			        <th>Mã học viên</th>
			        <th>Họ tên học viên</th>
			        <th>Ngày sinh</th>
			        <th>Giới tính</th>			        
			        <th>Số điện thoại</th>     
			        <th>Địa chỉ</th>
			        <th>Thao tác</th>
			      </tr>
			    </thead>
			       <tbody>
			    <c:forEach items="${entries}" var="entry">
			     
			      <tr>			      	
			        <td>${entry.idHV}</td>
			        <td>${entry.tenHV}</td>
			        <td>${entry.ngaysinh}</td>
			        <td>${entry.nu}</td>
			        <td>${entry.SDT}</td>
			        <td>${entry.diachi}</td>			       			      		      
			        
			        <td><a href=""><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" >Chỉnh sửa</button></a>
			            <a  href="" ><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true"  data-target="">Xóa</button></a></td> </tr>
			     </c:forEach>
			
			    </tbody>
			  </table><br />
            </form>               
          </div>
          
        </div>
        
        <div class="col-sm-3">
            <div class="container" id="thongbao">
              <a href="">THÔNG BÁO'HOT'</a> 
            </div>
            <div id="marq">
              <marquee scrolldelay="6" scrollamount="2" id="banner" onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="350">
                <table id="ctl00_ContentPlaceHolder1_ctl00_ctl00_ctl00_ctl00_dtlNewhot" cellspacing="0" border="0" style="border-collapse:collapse;">
                  <tbody>
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Thông báo lịch khai giảng các khóa học hè 2017-2018</u></a><br><br>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Những khóa học lập trình di động ưu đãi cho sinh viên</u></a><br><br>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Thông báo về việc nghỉ lễ 02/09/2017</u></a><br><br>
                      </td>
                    </tr>
                    
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Thông báo về việc cấp chứng chỉ khi hoàn thành khóa học</u></a><br><br>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Tổ chức kỳ thi trực tuyến dành cho tất cả các môn</u></a><br><br>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Thông báo lịch nghỉ tết khóa học 2017-2018</u></a><br><br>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <a href="Messages.aspx?id=4768"><span class="glyphicon glyphicon-play"><u>Đăng ký học trực tuyến</u></a><br><br>
                      </td>
                    </tr>
                  </tbody>
                 </table>

              </marquee>
            </div>
        </div>    
      </div>
    </div>
   </div><br>

  <!--Thông tin liên hệ-->
  <div class="footer">
      <div class="container" >
        <div class="col-sm-10 ">
          <div style="overflow:hidden container">
          <div class="col-md-4 ">
            <div class="tenfooter">
              <b>Trụ sở chính:</b></div>
            <div>
              <span class="glyphicon glyphicon-map-marker" style="width:16px">&nbsp;</span>1, Võ văn Ngân, Linh chiểu , Q.Thủ Đức</div>
            <div>
              <span class="glyphicon glyphicon-phone-alt" style="width:16px">&nbsp;</span>0969666999</div>
          </div>
          <div class="col-md-4 ">
          </div>
          <div class="col-md-4 ">
          <div class="tenfooter">
            <b>Liên hệ với chúng tôi:</b></div>
          <div>
            <i class="fa fa-facebook-square" style="font-size:24px;color:#9ACCDB"></i><a>Facebook</a></div>
          <div>
            <i class="fa fa-google-plus-square" style="font-size:24px;color:#9ACCDB"></i><a>Google+</a></div>
          </div>

        </div>
        <div style="color:#FFF; font-style:italic; font-size:14px; padding:10px 0 15px">
          <br>
            Copyright © Trung Tâm Tin Học Đại học Sư Phạm Kỹ Thuật TPHCM</div>
        </div>
        </div>
      </div>
  </div><!--end Thông tin liên hệ-->

  <!-- Modal-Đổi Mật Khẩu -->
  <div class="modal fade" id="Modal_RePassword" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <form id="form-doimk" name="form-doimk">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Đổi Mật Khẩu</h4>
          </div>
          <div class="modal-body">          
            <div class="row" style="margin-top: : 10px;margin-bottom: 10px;">
              <h5 class="col-md-5">Mật Khẩu Cũ:</h5>
              <div class="col-md-7" style="margin-left: 0 ;">
                <input type="text"  class="form-control " name="oldpassword" placeholder="6-18 kí tự">
              </div>
            </div>
            <div class="row" style="margin-top: : 10px;margin-bottom: 10px;">
              <h5 class="col-md-5">Mật Khẩu Mới:</h5>
              <div class="col-md-7">
                <input type="text"  class="form-control " id="newpassword" name="newpassword" placeholder="6-18 kí tự">
              </div>
            </div><div class="row" style="margin-top: : 10px;margin-bottom: 10px;">
              <h5 class="col-md-5" style="margin-top: 5px;">Nhập Lại Mật Khẩu:</h5>
              <div class="col-md-7">
                <input type="text"  class="form-control " id="renewpassword" name="renewpassword" placeholder="6-18 kí tự">
              </div>
            </div>                  
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-default btn_login " data-submit="modal"> Đổi Mật Khẩu</button>
          </div>
        </form>
      </div>
    </div>
  </div><!--end doi mat khau-->
  
  <!-- Modal dang ky-->
    <div class="modal fade" id="mddangky" role="dialog">
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content" >
          <div class="modal-header" style="padding:35px 50px;">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4>Đăng ký</h4>
          </div>
          <div class="modal-body" style="padding:40px 20px;">
              <form >
                <center>
                  <table id="tb-dangky" >
          <tr>
                      <td><p>Mã khóa học:</p></td>
                        <form>
                          <td  width="200"><input type="text" placeholder="151101"  id="formHoTen" /><br><span  id="errorHoTen" ></span></td>
                        </form>
                      <td><p>Tên khóa học:</p></td>
                        <form>
                          <td ><input type="text" placeholder="Lập trình web"  id="formHoTen" /><br><span  id="errorHoTen" ></span></td>
                        </form>
                    </tr>

                    <tr>
                      <td><p>Họ tên:</p></td>
                        <form>
                          <td  width="200"><input type="text"  id="formHoTen" /><br><span  id="errorHoTen" ></span></td>
                        </form>
                      <td><p>Ngày sinh:</p></td>
                        <form>
                          <td ><input type="text" placeholder="dd/mm/yyyy" id="formngaysinh" /><br><span  id="errorngaysinh" ></span></td>
                        </form>
                    </tr>

                    <tr>
                        
                      <td><p>Số điện thoại: </p></td>
                        <form>
                          <td><input type="text" id="formSDT" /><br><span  id="errorSDT" ></span>
                          </td>
                        </form>
                      <td><p>Giới tính: </p></td>                        
                        <form >
                          <td><input  type="radio" value="Nam" name="sex" required="" />Nam
                              <input  type="radio" value="nu" name="sex" checked required="" />Nữ<br /></td>
                        </form>
                    </tr>

                    <tr>
                      <td><p>Địa chỉ: </p></td>
                        <form>
                          <td>
                              <input type="text" id="formDiaChi" /><br><span  id="errorDiaChi" ></span>               
                          </td>
                        </form>
                      <td><p>Email: </p></td>
                        <form >
                          <td><input type="text" id="formemail" /><br><span  id="erroremail" ></span></td>
                        </form>
                    </tr>
                             
                  </table>
                </center>
                <div>
                  <br>
                    <button style="background-color:#755C4E;color:white;" type="submit" class="btn btn-block"><span class="glyphicon glyphicon-user"></span> Đăng ký</button>
                </div>
                  
              </form>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          </div>

        </div>
      </div>
    </div><!-- End Modal dang ky-->



    <!--thư viện jquery-->
    <script src="../tool/jquery-3.2.1.min.js"></script>
    <script src="../tool/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="../login.js"></script>
</body>
</html>