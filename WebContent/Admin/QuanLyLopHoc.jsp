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
    <title>Quản lý lớp học</title>
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
                <!--<li class="navbar-brand"><span><img style="width: 70px;padding:0px ;"  src="image/logo1.png"></span></li>-->
                <div class="navbar-brand"><img style="width: 40px;padding:0px ;" src="image/logo1.png"></div>

            </div>
            <div class="navbar-collapse collapse" id="main-menu">
                <div class="nav navbar-nav">
                 <li><a href="QlGiangVien">Giảng viên</a></li>
                    <li><a href="KH_load" >Khóa học</a></li>
                    <li><a href="LH_Load" >Lớp học</a></li>
                    <li><a href="QLHocVien">Học viên</a></li>
                    <li><a href="PL_Load">Phân lớp</a></li>
                    <li><a href="TK_Load">Tài khoản</a></li>
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
                   
                    <li><a href="Logout.jsp">Đăng Xuất</a></li>
                  </ul>
              </li>            
          </div>                 
        </div>            
    </nav>       
  </div>
    <!-- Modal thêm lớp học-->
    <div class="modal fade" id="mdthemLH" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:10px 20px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><span class="glyphicon glyphicon-plus-sign"></span> Thêm lớp học</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                   <form action ="LH_Insert" method="post" >
              <center>
              <table id="tb-lophoc" >
                <tr>
                  <td><p>Mã lớp học:</p></td>

                      <td ><input type="text" name="tgv_ma"      /><br><span  id="errorMa" ></span>
                      </td>
                  <td><p>Ngày bắt đầu:</p></td>

                      <td ><input type="text" name="tgv_ngaybd" value= "2017-5-5" id="formSDT" /><br><span  id="errorSDT" ></span>
                      </td>
                      <tr>
                 
                  <td><p>Ngày kết thúc:</p></td>
                      <td><input type="text" name="tgv_ngaykt" value= "2016-6-6" id="formuser" /><br><span  id="errouser" ></span>
                      </td>
                  
                </tr>
         
                <tr>
                  <td><p>Phòng:</p></td>
                  
                      <td  width="200"><input type="text" name="tgv_phong" "  id="formDiaChi" /><br><span  id="errorDiaChi" ></span>
                      </td>
                  <td><p>Mã Giảng viên :</p></td>
                 
                      <td ><input type="text" name="tgv_magv"  id="formngaysinh" /><br><span  id="errorngaysinh" ></span>
                      </td>
                      <tr>
                    
                  <td><p>Mã khóa học </p></td>
                      <td><input type="text" name="tgv_makh"  id="formTrinhDo" /><br><span  id="errorTrinhDo" ></span>
                      </td>
                 
                </tr>
                         
              </table></center>
              <div class="modal-footer">
                    <button name="t_gv" value="" class="btn btn-cam btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove">
                        
                        </span> Cancel</button>
                  
                   
                   <button type="submit" class="btn btn-success btn-default pull-right" data-target="#ThongBao" ><span class="glyphicon glyphicon-plus-sign">
                        
                        </span> Thêm</button>
                </div>
                
            </form>
   
                </div>
               
            </div>

        </div>
    </div><!--end thêm lớp học-->


    
    <div class="container  ">
        <div id="tieude">
            <form  class="col-xs-12" action="">
                <div class="col-xs-6" style="padding:0px;">
                    <h2>QUẢN LÝ LỚP HỌC</h2>
                </div>
               
          </form>
        </div>
       
           
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Mã lớp học</th>
          	<th>Ngày bắt đầu</th>
              <th>Ngày kết thúc</th>
              
              <th>Phòng</th>
           
              <th>Mã giảng viên</th>
              <th>Mã Khóa học</th>
              <th>Thao tác</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${entries}" var="entry">
    
      <tr>
        <td>${entry.id}</td>
        <td>${entry.ngaybatdau}</td>
        <td>${entry.ngayketthuc}</td>
        <td>${entry.phong}</td>
        <td>${entry.magiangvien}</td>
        <td>${entry.makhoahoc}</td>
       
         
        <td><a href="LH_Load1?index=${entry.id}"><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" >Chỉnh sửa</button></a>
            <a  href="LH_Delete?index=${entry.id}" ><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true"  data-target="">Xóa</button></a></td>
      </tr>
     </c:forEach>

          </tbody>
        </table>
              
              <button id="btn-click" class="btn btn-success" data-toggle="modal" data-show="true" data-target="#mdthemLH">Thêm lớp học</button>
             
        </div>
     <br>

    
        <!--Liên hệ-->
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
