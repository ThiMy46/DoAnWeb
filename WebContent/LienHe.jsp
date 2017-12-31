<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Liên hệ</title>
	<meta name ="viewport" content="with=device-width, initial-scale=1">
    <link rel="stylesheet" href="tool/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="css.css" type="text/css" rel="stylesheet" />
    
     <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <script src="tool/jquery-3.2.1.min.js"></script>
    <script src="tool/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="login.js"></script>
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
                    <form>
                        <div>
                            <label><span class="glyphicon glyphicon-user"></span> Tên đăng nhập</label>
                            <input type="text" placeholder="Enter account" class="form-control" id="formuser">  <br> <span id="errouser"></span>
                        </div>
                        <div>
                            <label><span class="glyphicon glyphicon-eye-open"></span> Mật khẩu</label>
                            <input type="password" placeholder="Enter password" class="form-control" id="loipass"> <br><span id="erropass"></span>
                        </div>
                        <div>
                            <label><input type="checkbox" value="" checked>Nhớ mật khẩu</label>
                        </div>
                        <button style="background-color:#755C4E;color:white;" type="submit" class="btn btn-block"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</button>
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
	        </div>	             
	    </nav>	        
	</div><!--End Thanh menu-->

	<!--lien he-->
  	<div class="container" >
	  	<div class="jumbotron text-center">	        
	        <div id="tieude"  >    
	            <h2>THÔNG TIN LIÊN HỆ</h2>  
	        </div>
	            <p>Chào các bạn, cám ơn bạn đã quan tâm các khóa học tại&nbsp;<strong>Trung Tâm Tin Học STB</strong>&nbsp;Trường Đại học Sư phạm Kỹ thuật Tp.HCM</p>
				<p>Xin vui lòng liên hệ với chúng tôi để được tư vấn và ghi danh các khóa học:</p>
				<ul style="font-size: 20px;">
					<strong>Cơ sở chính</strong>: 1, Võ Văn Ngân, phường Linh Chiểu, quận Thủ Đức
				</ul>
					
					<p style="margin-left: 0.5in;">
						ĐT: (028) 3503 0515</p>									
					<p>
						Vui lòng liên hệ với chúng tôi qua số <strong> (+84.8) 38960987 - 38960980 (Bấm chọn số 1)</strong> để được giải đáp mọi thắc mắc và hỗ trợ thông tin về các khóa học, hoặc gửi mail về địa chỉ: &nbsp;&nbsp;<a href="mailto:sbt.hcmute.edu.vn">stb@itc.hcmute.edu.vn</a></p>
					<p>
						Các yêu cầu liên quan đến việc hợp tác đào tạo theo yêu cầu cơ quan doanh nghiệp, &nbsp;phát triển phần mềm, cung cấp giải pháp và thiết bị CNTT, tư vấn các dự án CNTT,... vui lòng liên hệ điện thoại <strong>(+84.8) 38960989 - Ext: 105</strong> hoặc email <a href="mailto:sbt.hcmute.edu.vn">stb@itc.hcmute.edu.vn</a>
					</p>
						       
	    </div>
	</div>

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
</body>
</html>