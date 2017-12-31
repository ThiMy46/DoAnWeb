<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Trung tâm tin học - Khai giảng</title>
	<meta name ="viewport" content="with=device-width, initial-scale=1">
    <link rel="stylesheet" href="tool/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link href="css.css" type="text/css" rel="stylesheet" />
    <link href="style.css" type="text/css" rel="stylesheet" />
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

	<!--Lịch khai giảng-->
	<div class="container" id="lich-kg">
		<div class="row">
			<div class="col-xs-12">
				<h1 style="text-align: center;"><strong>Lịch khai giảng</strong></h1>
			</div>
			<div class="col-xs-12"><!--lap trinh di dong-->
				<div class="jumbotron">
				<div id="panel panel-default">
					    <div id="panel-heading">
					            <a class="myCollapse" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" style="text-decoration: none;">
					                <h4  style="width: 100%;text-align: center;">LẬP TRÌNH DI DỘNG <span class=" nganh-chon" aria-hidden="true" style="float:right"></span></h4>					                    
					            </a>
					    <div style="clear:both"></div>
					   	<h5><strong>Học phí: </strong><span style="text-decoration:line-through">5.200.000đ</span> - <strong><span style="color:#F00">ƯU ĐÃI: 4.000.000đ </span></strong>khi đăng ký online<br />Để nhận ưu đãi học viên phải đăng ký online và hoàn tất học phí đến hết ngày 22/11/2017</h5>

						<div id="panel-body table-responsive">
						<form>				
							<table class=" table table-hover table-bordered" id="tb-dangky">
								<thead>
									<tr>							
										<th>Mã lớp</th>
										<th>Tên môn học</th>
										<th>Thời gian</th>
										<th>Ngày khai giảng</th>
										<!--<th></th>-->
									</tr>
								</thead>
								<tbody>  
									<tr >
										<td>1</td>
										<td>Lập trình iOS</td>
										<td>Thứ 2-4 (18h - 21h)</td>
										<td>21//11/2017</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
									<tr >
										<td>2</td>
										<td>Lập trình Android</td>
										<td>Thứ 3-5 (18h - 21h)</td>
										<td>22/11/2017</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
									<tr >
										<td>3</td>
										<td>Lập trình Windows Phone</td>
										<td>Chủ nhật (8h - 11h)</td>
										<td>23/11/2017</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
								</tbody>
							</table>
						</form>	
					
						</div>
					</div>
				</div>
			</div>
			</div><!--end lap trinh di dong-->

			<!--Lịch thiết kế web-->
			<div class="col-xs-12">
				<div class="jumbotron">
				<div id="panel panel-default">
					
					    <div id="panel-heading">
					             <a class="myCollapse" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" style="text-decoration: none;">
					                <h4  style="width: 100%;text-align: center;">THIẾT KẾ WEBSITE<span class=" nganh-chon" aria-hidden="true" style="float:right"></span></h4>					                    
					            </a>
					    <div style="clear:both"></div>
					   	<h5><strong>Học phí:</strong> 2.600.000đ<br /><strong><span style="color:#F00">ƯU ĐÃI:</span></strong> <ul><li>Tặng 10% khi đăng ký lớp ban ngày</li></ul><ul><li>Tặng 10% dành cho đối tượng: Sinh viên và học viên cũ</li></ul></h5>

						<div id="panel-body table-responsive">
						<form>				
							<table class=" table table-hover table-bordered" id="tbLichThiGV">
								<thead>
									<tr>							
										<th>Mã lớp</th>
										<th>Tên môn học</th>
										<th>Thời gian</th>
										<th>Ngày khai giảng</th>
										
									</tr>
								</thead>
								<tbody>  
									<tr class="active">
										<td>1</td>
										<td>Kỹ thuật viên thiết kế website</td>
										<td>Thứ 2-4 (18h - 21h)</td>
										<td>1</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>-->  
									</tr>
									<tr class="active">
										<td>2</td>
										<td>Thiết kế website</td>
										<td>Thứ 3-5 (18h - 21h)</td>
										<td>2</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
									<tr class="active">
										<td>3</td>
										<td>Thiết kế giao diện web</td>
										<td>Chủ nhật (8h - 11h)</td>
										<td>4</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
								</tbody>
							</table>
						</form>	
					
						</div>
					</div>
				</div>
				</div>
			</div><!--end Lịch thiết kế web-->

			<!--Lịch tin học văn phòng-->
			<div class="col-xs-12">
				<div class="jumbotron">
				<div id="panel panel-default">						
					    <div id="panel-heading">
					             <a class="myCollapse" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" style="text-decoration: none;">
					                <h4  style="width: 100%;text-align: center;">TIN HỌC VĂN PHÒNG<span class=" nganh-chon" aria-hidden="true" style="float:right"></span></h4>					                    
					            </a>
					    <div style="clear:both"></div>
					   	<h5><strong>Học phí:</strong> 2.000.000đ<br /><strong><span style="color:#F00">ƯU ĐÃI: </span></strong><ul><li>Giảm 200.000đ cho HS-SV</li></ul>
					   		<ul><li>Giảm 50.000đ khi đăng ký nhóm 5 người</li></ul></h5>

						<div id="panel-body table-responsive">
						<form>				
							<table class=" table table-hover table-bordered" id="tbLichThiGV">
								<thead>
									<tr>							
										<th>Mã lớp</th>
										<th>Tên môn học</th>
										<th>Thời gian</th>
										<th>Ngày khai giảng</th>
										
									</tr>
								</thead>
								<tbody>  
									<tr class="active">
										<td>1</td>
										<td>Excel</td>
										<td>Thứ 2-4 (18h - 21h)</td>
										<td>1</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>-->  
									</tr>
									<tr class="active">
										<td>2</td>
										<td>Tin học cơ bản</td>
										<td>Thứ 3-5 (18h - 21h)</td>
										<td>2</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>-->  
									</tr>
									<tr class="active">
										<td>3</td>
										<td>Tin học quản lý</td>
										<td>Chủ nhật (8h - 11h)</td>
										<td>4</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>-->  
									</tr>
								</tbody>
							</table>
						</form>	
					
						</div>
					</div>
				</div>
				</div>
			</div><!--end Lịch tin học văn phòng-->

			<!--Lịch lập trình viên java-->
			<div class="col-xs-12">
				<div class="jumbotron">
				<div id="panel panel-default">						
					    <div id="panel-heading">
					             <a class="myCollapse" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" style="text-decoration: none;">
					                <h4  style="width: 100%;text-align: center;">LẬP TRÌNH VIÊN JAVA<span class=" nganh-chon" aria-hidden="true" style="float:right"></span></h4>					                    
					            </a>
					    <div style="clear:both"></div>
					   	<h5><strong>Học phí: </strong>1.200.000đ</span><strong><br /><span style="color:#F00">ĐẶC BIỆT: </span></strong>Ưu đãi 10% học phí khi đăng kí các lớp ban ngày từ thứ 2-6 </h5>

						<div id="panel-body table-responsive">
						<form>				
							<table class=" table table-hover table-bordered" id="tbLichThiGV">
								<thead>
									<tr>							
										<th>Mã lớp</th>
										<th>Tên môn học</th>
										<th>Thời gian</th>
										<th>Ngày khai giảng</th>
										
									</tr>
								</thead>
								<tbody>  
									<tr class="active">
										<td>1</td>
										<td>Lập trình viên cơ bản Java</td>
										<td>Thứ 2-4 (18h - 21h)</td>
										<td>1</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
									<tr class="active">
										<td>2</td>
										<td>Lập trình viên Java nâng cao</td>
										<td>Thứ 3-5 (18h - 21h)</td>
										<td>2</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>-->  
									</tr>
									<tr class="active">
										<td>3</td>
										<td>Lập trình viên Java cấp tốc</td>
										<td>Chủ nhật (8h - 11h)</td>
										<td>4</td>
										<!--<td>
											<a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#mddangky">Đăng ký</button></a>
										</td>--> 
									</tr>
								</tbody>
							</table>
						</form>	
					
						</div>
					</div>
				</div>
				</div>
			</div><!--end Lịch lập trình viên java-->

		</div>
	</div>


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
	</div><!--end liên hệ-->



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
                  <td><p>Email: </p></td>
                      <td>
                        <form >
                            <input type="text" id="formemail" /><br><span  id="erroremail" ></span>
                        </form></td>
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
	
</body>
</html>