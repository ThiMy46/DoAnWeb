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
    <title>Sửa tài khoản</title>
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
   
   
  
    <br> <br><br>
   
                   <form action ="TK_Update?tgv_tdangnhap=${entry.tendangnhap}" method="post">
              <center>
              <table id="tb-giangvien" >
              <tr>
              <td><p>Tên đăng nhập:</p></td>
                   
                      <td  width="200"><input type="text" name="" value= "${entry.tendangnhap}"  id="formMa" /><br><span  id="errorMa" ></span>
                      </td>
                  <td><p>Mật khẩu:</p></td>
                    
                      <td ><input type="text" name="tgv_mk" value= "${entry.matkhau}" id="formSDT" /><br><span  id="errorSDT" ></span>
                      </td>
                     </tr> 
                  <tr>
                  <td><p>ID Member:</p></td>
                      <td><input type="text" name="tgv_idmem" value= "${entry.idmember}" id="formHoTen" /><br><span  id="errorHoTen" ></span>
                      </td>
           
                  <td><p>Phân quyền:</p></td>
                   
                      <td  width="200"><input type="text" name="tgv_pquyen" value= "${entry.phanquyen}"  id="formDiaChi" /><br><span  id="errorDiaChi" ></span>
                      </td>
                         </tr> 
              </table></center>
                
           <center>
                <div style="width: 500px ; left: 100px;">
                <form action ="KH_load" method="post">
                   <button   class="btn btn-cam btn-default pull-left"><span class="glyphicon glyphicon-remove">
                        
                        </span> Cancel</button></form>
                    <button type="submit" class="btn btn-success btn-default pull-right" ><span class="glyphicon glyphicon-plus-sign">
                        
                        </span> Sửa</button>
                   
                </div>
                 </center>
                 </form>
   
 
     <br><br> <br><br>
    

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
