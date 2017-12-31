<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tin tức- 1</title>
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
	        
	</div>

	<!--Body -->
	 <div class="container" name="tintuc">
	 	<div class="col-md-12">
	 		<div class="col-xs-12 col-sm-6 khoang-cach">
	 			<div class="panel panel-default">
		 			<div>
		 			<a href="#">
		 				<img class="img-responsive" src="image/thongbao/tb2_5.png">
			 			
		 			</a>
		 			</div>
					
	 			</div>
	 			<div>
						<a href="#"><h3>Trung Tâm Tin Học Tổng khai giảng các khóa 2017-2018</h3></a>
						<span class="glyphicon glyphicon-time">
							ngày 21-11-2017
						</span>
						<p>Ngày 21/11/2017, Trung tâm Tin Học Tổng khai giảng các khóa Lập trình viên, Kỹ thuật viên và các lớp chuyên đề với lịch học Sáng - chiều - tối và cuối tuần</p>
						<a href="#">Xem tiếp</a>
				</div>
	 		</div>
			
			<div class="col-sm-6 col-xs-12 col-md-6" >
		 			<div class="panel panel-default">
			 			<div>
			 			<a href="#">
			 				<img class="img-responsive" src="image/thongbao/tb2.png">
				 			
			 			</a>
			 			</div>
		 			</div>
		 			<div>
			 			<a href="#"><h3>[Infographic] 10 các thiết kế hấp dẫn nội dung thị giác</h3>
			 		</div>
	 		</div>
	 		<div class="col-xs-12 col-sm-6">
	 			<div class="col-sm-6 col-xs-12 col-md-6" >
		 			<div class="panel panel-default">
			 			<div>
			 			<a href="#">
			 				<img class="img-responsive" src="image/thongbao/tb5.jpg">
				 			
			 			</a>
			 			</div>
		 			</div>
		 			<div>
						<a href="#"><h3>[Developer] Khóa học đào tạo developer chuyên nghiệp trọn gói</h3></a>	
					</div>
		 		</div>
		 		<div class="col-sm-6 col-xs-12 col-md-6" >
		 			<div class="panel panel-default">
			 			<div>
			 			<a href="#">
			 				<img class="img-responsive" src="image/thongbao/tb3.jpg">
				 			
			 			</a>
			 			</div>
		 			</div>
		 			<div>
			 			<a href="#"><h3>[Free] Học thử - Trải nghiệm thật khóa thiết kế Website</h3>	
			 		</div>
	 			</div>
	 			
	 	</div>
	 </div>
	<div class="col-md-12 khoang-cach line"></div>
	
	<!--Chi tiết-->
	<div class="col-md-12">
		<div class="col-md-5 col-sm-5 col-xs-5">
			<a href="#"><img class="img-responsive" src="image/thongbao/tb3.png"></a>
		</div>
		<div class="col-md-5 col-sm-5 col-xs-7">
			<a href="#"><h3>Khai bút đầu năm - Học thử miễn phí</h3></a>
			<span class="glyphicon glyphicon-time">
				ngày 21-10-2017
			</span>
			<p>Cùng khai bút đầu năm với 2 buổi học thử hoàn toàn miễn phí tại Trung tâm Tin học. Phương pháp học trực quan, sinh động sẽ đem đến cho học viên cái nhìn đầy lí thú về nghề Thiết kế Đồ họa</p>
			<a href="#">Xem tiếp</a>
		</div>
	</div>
	<div class="col-md-12 khoang-cach line"></div>

	<div class="col-md-12">
		<div class="col-md-5 col-sm-5 col-xs-5">
			<a href="#"><img class="img-responsive" src="image/thongbao/tb20.jpg" ></a>
		</div>
		<div class="col-md-6 col-sm-6 col-xs-7">
			<a href="#"><h3>Workshop Thiết kế banner động với HTML5 &amp; CSS3</h3></a>
			<span class="glyphicon glyphicon-time">
				ngày 21-10-2017
			</span>
			<p>Nhằm đem đến cho các bạn những trải nghiệm mới mẻ cùng với việc cập nhật những kỹ thuật mới nhất trong công nghệ làm Banner chuyển động, ngành Đồ họa – Trung tâm Tin học ĐH Khoa học tự nhiên giới thiệu đến các bạn buổi Workshop chuyên đề “Thiết kế Banner động với HTML5 và CSS3”</p>
			<a href="#">Xem tiếp</a>
		</div>
	</div>
	<div class="col-md-12 khoang-cach line"></div>

	<div class="col-md-12">
		<div class="col-md-5 col-sm-5 col-xs-5">
			<a href="#"><img class="img-responsive" src="image/thongbao/tb23.jpg"></a>
		</div>
		<div class="col-md-6 col-sm-6 col-xs-7">
			<a href="#"><h3>[Thiết Kế Đồ Họa] 21 công cụ thiết kế miễn phí dành cho Marketer</h3></a>
			<span class="glyphicon glyphicon-time">
				ngày 21-10-2017
			</span>
			<p>Việc tạo ra tất cả những hình ảnh đẹp không phải là thế mạnh của marketer, và phần mềm thiết kế không phải là miễn phí. Bài viết sau đây sẽ giới thiệu đến bạn 21 công cụ miễn phí để tạo ra hình ảnh, banner web, infographic hay bất kì thứ gì bạn cần</p>
			<a href="#">Xem tiếp</a>
		</div>
	</div>
	<div class="col-md-12 khoang-cach line"></div>

	<div class="col-md-12">
		<div class="col-md-5 col-sm-5 col-xs-5">
			<a href="#"><img class="img-responsive" src="image/thongbao/tb24.jpg"></a>
		</div>
		<div class="col-md-6 col-sm-6 col-xs-7">
			<a href="#"><h3>30 suất học Thiết kế Đồ họa miễn phí</h3></a>
			<span class="glyphicon glyphicon-time">
				ngày 21-10-2017
			</span>
			<p>Thiết kế Đồ họa không còn quá xa lạ, thậm chí hiện hữu rất nhiều ở xung quanh chúng ta hàng ngày. Vấn đề ở đây là chúng ta vẫn chưa hình dung được hết cái hay, cái đẹp của Đồ họa cũng như lợi ích mà nghề Thiết kế đem lại</p>
			<a href="#">Xem tiếp</a>
		</div>
	</div>
	<div class="col-md-12 khoang-cach line"></div>

	<div class="col-md-12">
		<div class="col-md-5 col-sm-5 col-xs-5">
			<a href="#"><img class="img-responsive" src="image/thongbao/tb2.jpg"></a>
		</div>
		<div class="col-md-6 col-sm-6 col-xs-7">
			<a href="#"><h3>Thông báo nghỉ lễ</h3></a>
			<span class="glyphicon glyphicon-time">
				ngày 21-10-2017
			</span>
			<p>Nhân ngày 02-09-2017, lễ quốc khánh Trung tâm Tin học xin thông báo đến các học viên về lịch nghỉ và lịch học bù.</p>
			<a href="#">Xem tiếp</a>
		</div>
	</div>

	<!--Số trang-->
	<nav class="col-md-12 col-sm-12 col-xs-12" id="sotrang" style="text-align: center;">
		<ul class="pagination">
			<li>
				<a href="active control" aria-label="Previous">
					<span aria-hidden="true">Trang đầu</span></a>
			</li>
			<li>
				<a href="active control" aria-label="Previous">
					<span aria-hidden="true"><<</span></a>
			</li>
			<li>
				<a class="active" href="tintuc.html">1</a>
				<a class="link" href="tintuc2.html">2</a>
				
				<!--<a class="link" href="#">4</a>
				<a class="link" href="tintuc3.html">3</a>
				<a class="link" href="#">5</a>
				<a class="link" href="#">6</a>
				<a class="link" href="#">7</a>-->
			</li>
			<li>
				<a class="link" href="active control" aria-label="Next">
					<span aria-hidden="true">>></span></a>
			</li>
			<li>
				<a class="link" href="active control" aria-label="Next">
					<span aria-hidden="true">Trang cuối</span></a>
			</li>
		</ul>
	</nav>
	</div><!--end body-->


	<!--Hỗ trợ-->   
	<div  id="lienhe" >
	    <a><img src="image/lienhe.png"></a>
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
	</div><!--End Hỗ trợ-->
	
</body>
</html>