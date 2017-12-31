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
    <title>Trang lớp học</title>
    <meta name ="viewport" content="with=device-width, initial-scale=1">
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
                    <li><a href="lichihoc_GV">Lịch giảng dạy</a></li>
                    <li><a href="LHLoad_GV">Danh sách lớp học</a></li> 
                    <li><a href="showQLDiem_GV">Quản lý điểm</a></li>                    
                                                      
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
                <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Giảng viên<span class="caret"></span></a>
                  <ul class="id-dropdown dropdown-menu">
                    <li><a href="Logout.jsp">Đăng Xuất</a></li>
                  </ul>
              </li>            
          </div>                 
        </div>            
    </nav>       
  </div>
   
  

    <!--QUẢN LÝ GIẢNG VIÊN-->
    <div class="container">
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
        <th>Tên Lớp học</th>
        <th>Ngày bắt đầu </th>
        <th>Ngày kết thúc</th>     
        <th><center>Thao tác</center></th>
      </tr>
    </thead>
    <tbody>
       <c:forEach items="${entries}" var="entry">
    
      <tr>
        <td>${entry.id}</td>
        <td>${entry.tenkhoahoc}</td>
        <td>${entry.ngaybatdau}</td>
        <td>${entry.ngayketthuc}</td>
       
         
       <td><center><a><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" data-target="#">UpLoad tài liệu</button></a>
           <a href="DSHocVien_GV?index=${entry.id}"><button id="btn-click" class="btn btn-default" data-toggle="modal" data-show="true" >Lấy danh sách</button></a>
      </tr>
     </c:forEach>
      
    </tbody>
  </table>
        
</div> <!--End QUẢN LÝ GIẢNG VIÊN-->
     <br>
    
  <!--lien he-->
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
        </div><!--end lien he-->
    
    <!-- jQuery -->
    <script src="tool/jquery-3.2.1.min.js"></script>
    <script src="tool/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="login.js"></script>
</body>

</html>
