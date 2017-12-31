<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<c:if test="${not empty param.login }">

<%-- <c:if test="${param.username=='1' and param['password']=='1' }">
	<c:set var= "user" value="${param.username}" scope="session"> </c:set>
	
</c:if> --%>
<c:set var= "user" value="${param.username}" scope="session"> </c:set>
<c:redirect url= "DangNhap?user=${param.username}&pass=${param.password}"></c:redirect>
</c:if>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
    <title>Trang chủ</title>
    <meta name ="viewport" content="with=device-width, initial-scale=1">
    <link rel="stylesheet" href="tool/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="css.css" type="text/css" rel="stylesheet" />    
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
   
</head>
    
<body >
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
  <div id="menu" class="sticky " >
    <nav class="navbar navbar-inverse" >
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-menu ">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                
          <span class="icon-bar"></span>
        </button>
             <!--<li class="navbar-brand"><span><img style="width: 70px;padding:0px ;"  src="image/logo1.png"></span></li>-->
        <div  class="navbar-brand"><img style="width: 40px;padding:0px ;"  src="image/logo1.png"></div> 
                
        </div>
        <div class="navbar-collapse collapse" id="main-menu">
          <div  class="nav navbar-nav">
            <li ><a href="TrangChu.jsp">Home</a></li >
            <li ><a href="LichKhaiGiang.jsp">Lịch khai giảng</a></li>
            <li ><a href="KhoaHoc.jsp">Khóa học</a></li>
            <li ><a href="TinTuc.jsp">Tin tức</a></li>
            <li><a href="LienHe.jsp">Hỗ trợ</a></li>
            <li><div id="show"   class="input-group" style="width: 200px;heght:50px;padding:10px ;" >
              <input type="text"  class="form-control" placeholder="Search" name="search">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
              </div>
              </div></li> 
          </div>
          <div class= "nav navbar-nav navbar-right" id="lgright">
          <li><a id="btnlogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li></div>         
        </div>           
    </nav>
        
  </div><!--End Thanh menu-->
   
  <!--Banner carousel-->
  <div class="container" class="col-xs-12 col-sm-4">
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="image/tc1.png" alt=".net" style="width:100%;">
        </div>

        <div class="item">
          <img src="image/ltDidong.png" alt="microsoft office" style="width:100%;">
        </div>

        <div class="item">
          <img src="image/tcth2.jpg" alt=".net" style="width:100%;">
        </div>
      
        <div class="item">
          <img src="image/tcth3.png" alt="microsoft office" style="width:100%;">
        </div>
      </div>

      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div><!--End banner-->

  <!--Giới thiệu trung tâm-->
  <div class="container" >
  <div class="jumbotron text-center"  >
          <div >
            <div id="tieude"  >    
                  <h2>GIỚI THIỆU VỀ TRUNG TÂM TIN HỌC</h2>  </div>
                  <p>Với đội ngũ giảng viên chuyên nghiệp, nhiệt tình, cơ sở vật chất hiện đại, đến với trung tâm tin học bạn sẽ được tiếp cận với kiến thức sát thực tế, có tính ứng dụng cao và luôn cập nhật công nghệ mới. Cùng khám phá tri thức và ứng dụng bạn nhé!<br />

                   Nếu có bất cứ thắc mắc nào, hãy liên hệ với chúng tôi qua số <strong>Hotline: 0969666999</strong> để được tư vấn và giải đáp tận tình cho nhu cầu của bạn!</p>
           </div>
      
      <button class="btn  btn_tc panel-footer " id="btndangky">Đăng ký ngay!</button>      
      <br>
      <img src="image/endtext.png">     
  </div>
  </div>
   <!--chi tiet khoa hoc tieu bieu--> 
  <div class="ten-khoa-hoc">
    <div class="container" >
      <div class="jumbotron text-center">
      <h2 id="tieude">KHÓA HỌC TIÊU BIỂU</h2><br>
      <!--kh1-->
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
              <img class="img-responsive" src="image/ltdidong/android4.png" style="width: 350px;height: 123px;">
          </div>
          
          <div class="panel-footer">
            <a href="KhoaHoc.jsp" style="text-decoration: none;"><h3>LẬP TRÌNH DI ĐỘNG</h3></a>  
            <p>3.999.000VNĐ</p>

          </div>
        </div>
      </div>
      <!--kh2-->
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img class="img-responsive" src="image/khw8.jpg" style="width: 350px;height: 123px;">     
          </div>
          <div class="panel-footer">
            <a href="KhoaHoc.jsp" style="text-decoration: none;"><h3>THIẾT KẾ WEBSITE</h3></a>
            <p>4.950.000VNĐ</p>
          </div>
        </div>
      </div>
      <!--kh3-->
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img class="img-responsive" src="image/tinhocvp/thvp2.png" style="width: 350px;height: 123px;">      
          </div>
          <div class="panel-footer">
            <a href="KhoaHoc.jsp" style="text-decoration: none;"><h3>TIN HỌC VĂN PHÒNG </h3></a>
            <p>4.990.000VNĐ</p>
          </div>
        </div>
      </div>
      </div>
    </div>
  </div><!--end-->

  <!--Hỗ trợ-->   
 <!--  <div  id="lienhe" >
    <a><img src="image/lienhe.png"></a>
  </div> -->

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
  </div><!--End Hỗ trợ--> 

  <!-- Modal đăng nhập -->
    <div class="modal fade" id="mdlogin" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4>Đăng nhập</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <form >
                        <div>
                            <label><span class="glyphicon glyphicon-user"></span> Tên đăng nhập</label>
                            <input type="text" name="username" placeholder="Enter account" class="form-control" id="formuser">  <br> <span id="errouser"></span>
                        </div>
                        <div>
                            <label><span class="glyphicon glyphicon-eye-open"></span> Mật khẩu</label>
                            <input type="password" name="password" placeholder="Enter password" class="form-control" id="loipass"> <br><span id="erropass"></span>
                        </div>
                        
                        <button style="background-color:#755C4E;color:white;" type="submit" name="login" value="TraddngChu" class="btn btn-block"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-cam btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                    <p>Not a member? <a href="#">Sign Up</a></p>
                    <p>Forgot <a href="#">Password?</a></p>
                </div>
            </div>

        </div>
    </div><!-- End Modal đăng nhập -->

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
                  <td><p>Họ tên:</p></td>
                    <form>
                      <td  width="200"><input type="text"  id="formHoTen" /><br><span  id="errorHoTen" ></span>
                      </td></form>
                  <td><p>Ngày sinh:</p></td>
                    <form>
                      <td ><input type="text" placeholder="dd/mm/yyyy" id="formngaysinh" /><br><span  id="errorngaysinh" ></span>
                      </td></form>
                      <tr>
                    <form>
                  <td><p>Số điện thoại: </p></td>
                      <td><input type="text" id="formSDT" /><br><span  id="errorSDT" ></span>
                      </td></form>
                  <td><p>Giới tính: </p></td>
                    <td>
                       <form >
                               <input  type="radio" value="Nam" checked/>Nam
                           <input  type="radio" value="nu" />Nữ<br />
                      </form></td></tr>
                <tr>
                  <td><p>Địa chỉ: </p></td>
                    <form>
                      <td>
                          <input type="text" id="formDiaChi" /><br><span  id="errorDiaChi" ></span>
                                          
                      </td>
                    </form>
                  
                </tr>
                         
              </table></center>
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

	<!-- jQuery -->
 	<script src="tool/jquery-3.2.1.min.js"></script>
    <script src="tool/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="login.js"></script>
</body>
  
</html>