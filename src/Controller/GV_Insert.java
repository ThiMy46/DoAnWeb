package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QLGVDAO;
import DB.DBConnection;
import model.QLGVEntry;


@WebServlet("/GV_Insert")
public class GV_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GV_Insert() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean flag=false;
		request.setCharacterEncoding("UTF-8");

		Connection conn = (Connection) DBConnection.CreateConnection();
		String vma = request.getParameter("tgv_ma");
		String vten = request.getParameter("tgv_ten");
		String vnsinh = request.getParameter("tgv_ngaysinh");
		String vdchi = request.getParameter("tgv_diachi");
		String vsdt = request.getParameter("tgv_sdt");
		String vnu = request.getParameter("tgv_nu");
		String vtdo = request.getParameter("tgv_trinhdo");
		String vchmon = request.getParameter("tgv_chuyenmon");
		
		QLGVEntry gv = new QLGVEntry();
		
		//java.util.Date utilDate = new SimpleDateFormat("dd/MM/yyyy").parse(vnsinh);
		//java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		
		gv.setId(Integer.parseInt(vma));
		gv.setTen(vten);
		gv.setNgaysinh(vnsinh);
		gv.setDiaChi(vdchi);
		gv.setSDT(vsdt);
		gv.setNu(vnu);
		gv.setTrinhdo(vtdo);
		gv.setChuyenmon(vchmon);
		
		//list.add(gv);
		
		//LOI
		try {
			flag=QLGVDAO.InsertData( gv, conn);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String MS="Không thêm được";
		if(flag==true)
		{
			MS="Đã Thêm  thành công";
		}
		
		

		List<QLGVEntry> list = QLGVDAO.HienThiGV(conn);

		request.setAttribute("entries", list);
		request.setAttribute("Messe", MS);
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyGiangVien.jsp");
		rd.forward(request, response);

	}

}