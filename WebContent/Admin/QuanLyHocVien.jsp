<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
 <%--   <c:if test="${empty sessionScope.user }">
	<c:redirect url= "../TrangChu.jsp"></c:redirect>
</c:if>--%> 




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý học viên</title>
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


    
     <!-- Modal thêm học viên-->
    <div class="modal fade" id="mdthemHV" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:10px 20px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><span class="glyphicon glyphicon-plus-sign"></span> Thêm học viên</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                   <form action ="HV_Insert" method="post">
              <center>
              <table id="tb-giangvien" >
                          <tr>
                  <td><p>Mã học viên:</p></td>

                      <td ><input type="text" name="tgv_ma"    /><br><span  id="errorMa" ></span>
                      </td>
                  <td><p>Số điện thoại:</p></td>

                      <td ><input type="text" name="tgv_sdt" id="formSDT" /><br><span  id="errorSDT" ></span>
                      </td>
                      <tr>
                 
                  <td><p>Tên học viên:</p></td>
                      <td><input type="text" name="tgv_ten"  id="formuser" /><br><span  id="errouser" ></span>
                      </td>
                  <td><p>Giới tính: </p></td>
                    <td>
                      <form>
                               <input  type="radio" name="tgv_nu"  value="false" checked/>Nam
                           <input  type="radio" name="tgv_nu"  value="true" />Nữ<br />
                           </form>
                     </td>
                </tr>
         
                <tr>
                  <td><p>Địa chỉ:</p></td>
                  
                      <td  width="200"><input type="text" name="tgv_dchi"  id="formDiaChi" /><br><span  id="errorDiaChi" ></span>
                      </td>
                  <td><p>Ngày sinh:</p></td>
                 
                      <td ><input type="text" name="tgv_nsinh" value= "2015-9-9" placeholder="dd/mm/yyyy" id="formngaysinh" /><br><span  id="errorngaysinh" ></span>
                      </td>
                      <tr>
                    
                 
                </tr>
                         
              </table></center>
                 <div class="modal-footer">
                    <button type="submit" name="t_gv" value="" class="btn btn-cam btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove">
                        
                        </span> Cancel</button>
                  
                   
                   <button type="submit" class="btn btn-success btn-default pull-right" data-target="#ThongBao" ><span class="glyphicon glyphicon-plus-sign">
                        
                        </span> Thêm</button>
                </div>
            </form>
   
                </div>
                
            </div>

        </div>
    </div><!--end thêm học viên-->

  
    
    
    <div class="container  ">
        <div id="tieude">
          <form  class="col-xs-12" action="">
                <div class="col-xs-6" style="padding:0px;">
                    <h2>QUẢN LÝ HỌC VIÊN</h2>
                </div>
               
          </form>
        </div>
       
           
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Mã học viên</th>
        <th>Họ Tên học viên</th>
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
        <td>${entry.id}</td>
        <td>${entry.ten}</td>
        <td>${entry.ngaysinh}</td>
          <td>${entry.nu}</td>
           <td>${entry.SDT}</td>
        <td>${entry.diaChi}</td>
       
      
      
        
        <td><a href="HV_Load1?index=${entry.id}"><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" >Chỉnh sửa</button></a>
            <a  href="HV_Delete?index=${entry.id}" ><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true"  data-target="">Xóa</button></a></td> </tr>
     </c:forEach>

    </tbody>
  </table>
        
        <button id="btn-click" class="btn btn-success" data-toggle="modal" data-show="true" data-target="#mdthemHV">Thêm học viên</button>
       
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
