$(document).ready(function(){
    $("#btnlogin").click(function(){
        $("#mdlogin").modal();
    });
    $("#btndangky").click(function(){
        $("#mddangky").modal();
    });
});
$(function(){
	
	$("#errouser").hide();
	$("#erropass").hide();
	$("#errorHoTen").hide();
    
    $("#errorngaysinh").hide();
	$("#errorSDT").hide();
	$("#errorDiaChi").hide();
    $("#erroremail").hide();
	 var var_user=false;
	 var var_pass=false;
    var var_hoten=false;
    
    var var_ngaysinh=false;
	 var var_sdt=false;
    var var_diachi=false;
    var var_email=false;
	    
    $("#formuser").focusout(function(){
       check_user();
    	
    });

    $("#loipass").focusout(function(){
        check_pass();
    });
    $("#formHoTen").focusout(function(){
        check_hoten();
    });
   
    $("#formngaysinh").focusout(function(){
        check_ngaysinh();
    });
    $("#formSDT").focusout(function(){
        check_sdt();
    });
    $("#formDiaChi").focusout(function(){
        check_diachi();
    });
     $("#formemail").focusout(function(){
        check_email();
    });
    function check_user(){
    	var user_lenght=$("#formuser").val().length;
    	   
    	if(user_lenght<5||user_lenght>20)
    		{
    		$("#errouser").html("Should be between 5-20 characters");
    		$("#errouser").show();
    		 var_user=true;
    		}
    	else
    		{$("#errouser").hide();}
    }
    
    function check_pass(){
    	var pass_lenght=$("#loipass").val().length;
    	   
    	if(pass_lenght <3)
    		{
    		$("#erropass").html("At least 3 characters");
    		$("#erropass").show();
    		 var_pass=true;
    		}
    	else
    		{$("#erropass").hide();}
    }
     function check_hoten(){
    	var pass_lenght=$("#formHoTen").val().length;
    	   
    	if(pass_lenght <=1)
    		{
    		$("#errorHoTen").html("Tên Không hợp lệ");
    		$("#errorHoTen").show();
    		 var_hoten=true;
    		}
    	else
    		{$("#errorHoTen").hide();}
    }
    
     function check_ngaysinh(){
    	var pass_lenght=$("#formngaysinh").val().length;
    	   
    	if(pass_lenght <=1)
    		{
    		$("#errorngaysinh").html("Ngày sinh không hợp lệ");
    		$("#errorngaysinh").show();
    		 var_hoten=true;
    		}
    	else
    		{$("#errorngaysinh").hide();}
    }
     function check_sdt(){
    	var pass_lenght=$("#formSDT").val().length;
    	   
    	if(pass_lenght >12||pass_lenght <10)
    		{
    		$("#errorSDT").html("SDT Không hợp lệ");
    		$("#errorSDT").show();
    		 var_sdt=true;
    		}
    	else
    		{$("#errorSDT").hide();}
    }
     function check_diachi(){
    	var pass_lenght=$("#formHoTen").val().length;
    	   
    	if(pass_lenght <=1)
    		{
    		$("#errorDiaChi").html("Địa chỉ không hợp lệ");
    		$("#errorDiaChi").show();
    		 var_diachi=true;
    		}
    	else
    		{$("#errorDiaChi").hide();}
    }

    function check_email(){
    	var pass_lenght=$("#formHoTen").val().length;
    	   
    	if(pass_lenght <=1)
    		{
    		$("#erroremail").html("Email không hợp lệ");
    		$("#erroremail").show();
    		 var_email=true;
    		}
    	else
    		{$("#erroremail").hide();}
    }

  

    //them giang vien
    
    
    $("#errorMa").hide(); 
    $("#errorTrinhDo").hide();
	$("#errorChuyenMon").hide();
	
	 var var_ma=false;
	 var var_trinhdo=false;
    var var_chuyenmon=false;
    
  
	    
    $("#formMa").focusout(function(){
       check_ma();
    	
    });

    $("#formTrinhDo").focusout(function(){
        check_trinhdo();
    });
    $("#formChuyenMon").focusout(function(){
        check_chuyenmon();
    });
   
  
    function check_ma(){
    	var user_lenght=$("#formMa").val().length;
    	   
    	if(user_lenght<=1||user_lenght>8)
    		{
    		$("#errorMa").html("must 8 characters");
    		$("#errorMa").show();
    		 var_ma=true;
    		}
    	else
    		{$("#errorMa").hide();}
    }
    
    function check_trinhdo(){
    	var pass_lenght=$("#formTrinhDo").val().length;
    	   
    	if(pass_lenght <=1)
    		{
    		$("#errorTrinhDo").html("null");
    		$("#errorTrinhDo").show();
    		 var_trinhdo=true;
    		}
    	else
    		{$("#errorTrinhDo").hide();}
    }
     function check_chuyenmon(){
    	var pass_lenght=$("#formChuyenMon").val().length;
    	   
    	if(pass_lenght <=1)
    		{
    		$("#errorChuyenMon").html("Không hợp lệ");
    		$("#errorChuyenMon").show();
    		 var_hoten=true;
    		}
    	else
    		{$("#errorChuyenMon").hide();}
    }
    
    
});



