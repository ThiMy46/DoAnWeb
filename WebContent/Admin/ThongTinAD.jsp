<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
  <c:if test="${empty sessionScope.user }">
	<c:redirect url= "TrangChu.jsp"></c:redirect>
</c:if>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý giáo viên</title>
    <meta name="viewport" content="with=device-width, initial-scale=1">
    <link rel="stylesheet" href="tool/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="css.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    
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
 
    <!--menu-->
    <div id="menu" class="sticky ">
        <nav class="navbar navbar-inverse">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu ">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                <div class="navbar-brand"><img style="width: 40px;padding:0px ;" src="image/logo1.png"></div>

            </div>
            <div class="navbar-collapse collapse" id="main-menu">
                <div class="nav navbar-nav">
               <li><a href="TrangchuAD.jsp">Home</a></li>
                    <li><a href="QuanLyGiangVien.jsp">Giảng viên</a></li>
                    <li><a href="Admin/QuanLyKhoaHoc.jsp" >Khóa học</a></li>
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
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>${user} (Admin)<span class="caret"></span></a>
                  <ul class="id-dropdown dropdown-menu">
                    <li><a href="Logout.jsp" >Thông Tin Tài Khoản</a></li>
                    <li><a href="Logout.jsp">Đăng Xuất</a></li>
                  </ul>
              </li>            
          </div>                 
        </div>            
    </nav>       
  </div>
   
   
   
    
        <div id="tieude">
            <form  class="col-xs-12" action="">
                
                    <h2>THÔNG TIN CÁ NHÂN</h2>
                
          </form>
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
            <h3 style="text-align: center;">Thông tin cá nhân</h3>                            
              <!--<form method="post">
                <div class="col-sm-2">
                  <span><strong>Họ và tên:</strong></span>
                </div>
                <div class="col-sm-10">
                  <div class="input-group">
                    <span class="input-group-addon" id="basic-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" placeholder="Họ tên" value="Cao Thị Thuyền" aria-describedby="basic-addon" required>
                  </div>
                </div>
                <br><br><br>
              
                <div class="col-sm-2"> 
                  <span><strong>Giới tính:</strong></span>
                </div>
                <div class="col-sm-10">
                    <input type="radio" name="sex" required> Nam 
                    <input type="radio" name="sex" checked required> Nữ
                </div>
                <br><br><br>
                <div class="col-sm-2">
                  <span><strong>Email:</strong></span>
                </div>
                <div class="col-sm-10">
                  <div class="input-group">
                    <span class="input-group-addon" id="basic-addon3"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                    <input type="email" class="validation_email form-control" placeholder="Email" value="thuyen9771@gmail.com" aria-describedby="basic-addon3" required>
                  </div>
                </div>
                <br><br><br>
                <div class="col-sm-2">
                  <span><strong>Số điện thoại:</strong></span>
                </div>
                <div class="col-sm-10">
                  <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2"><i class="fa fa-phone" aria-hidden="true"></i></span>
                    <input type="text" class="validation_phone form-control" placeholder="Họ tên" value="01645293097" aria-describedby="basic-addon2" required>
                  </div>
                </div>
                <br><br><br>
                <div class="col-sm-2">
                  <span><strong>Địa chỉ:</strong></span>
                </div>
                <div class="col-sm-10">
                  <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                    <input type="text" class="form-control" placeholder="Địa chỉ của bạn" value="Lê Văn Việt, Quận 9, TP.HCM" aria-describedby="basic-addon4" required>
                  </div>
                </div>
                
                <br><br><br>
                
                <div class="col-sm-6 text-right">
                  <button id="Confirm_info" class="btn btn-primary" type="text"><span class="glyphicon glyphicon-ok"></span> Cập nhật</button>
                </div>
                <div class="col-sm-6 text-left">
                  <button id="Reset_info" class="btn btn-danger" type="reset"><span class="glyphicon glyphicon-remove"></span> Hủy</button>
                </div>
                <br><br><br>
              </form>-->
              <form >
              <center>
              <table id="tb-dangky" >
                <tr>
                  <td><p>Mã học viên:</p></td>
                    <form>
                      <td  width="200"><input type="text"  id="formHoTen" /><br><span  id="errorHoTen" ></span>
                      </td></form>
                  <td><p>Mã lớp học:</p></td>
                    <form>
                      <td ><input type="text" id="formHoTen" /><br><span  id="errorngaysinh" ></span>
                      </td></form>
                      <tr>
                    <form>
                  <td><p>Họ tên:</p></td>
                      <td><input type="text" placeholder="Họ tên" value="Cao Thị Thuyền" aria-describedby="basic-addon" required id="formHoten" /><br><span  id="errorHoTen" ></span>
                      </td></form>
                  <td><p>Giới tính: </p></td>
                    <td>
                       <form >
                               <input  type="radio" value="Nam" name="sex" required />Nam
                           <input  type="radio" value="nu"  name="sex" checked required />Nữ<br />
                      </form></td>
                </tr><br />
         
                <tr>
                  <td><p>Địa chỉ:</p></td>
                    <form>
                      <td  width="200"><input type="text"  id="formHoTen" /><br><span  id="errorHoTen" ></span>
                      </td></form>
                  <td><p>Ngày sinh:</p></td>
                    <form>
                      <td >
                        <input type="text" placeholder="dd/mm/yyyy" id="formHoTen" /><br><span  id="errorngaysinh" ></span>
                      </td>
                    </form>
                      <tr>
                    <form>
                  <td><p>Số điện thoại: </p></td>
                  
                      <td><input type="text" id="formSDT" /><br><span  id="errorSDT" ></span>
                      </td></form>
                   
                  <td><p>Email: </p></td>
                      <td><input type="text" id="formSDT" /><br><span  id="errorSDT" ></span>
                      </td></form>
                </tr>

                <tr>
                  
                  <td><button type="submit" class="btn btn-success btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-plus-sign">
                        
                        </span> Sửa</button></td>
                    <td><button type="submit" class="btn btn-cam btn-default pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-remove">
                        
                        </span> Cancel</button></td>
                </tr>
                         
              </table><br />
            </center>
                
            </form>
                </div>

          
        </div>
           
    

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
