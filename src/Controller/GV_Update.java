package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
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

@WebServlet("/GV_Update")
public class GV_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GV_Update() {
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
		int ma = Integer.parseInt(request.getParameter("sgv_ma"));
		//int ma = Integer.parseInt(sgv_ma);
		//String vma = request.getParameter("tgv_ma");
		String vten = request.getParameter("sgv_ten");
		String vnsinh = request.getParameter("sgv_nsinh");
		String vdchi = request.getParameter("sgv_dchi");
		String vsdt = request.getParameter("sgv_sdt");
		String vnu = request.getParameter("sgv_nu");
		String vtdo = request.getParameter("sgv_tdo");
		String vchmon = request.getParameter("sgv_cmon");
		
		QLGVEntry gv = new QLGVEntry();
		
		//java.util.Date utilDate = new SimpleDateFormat("dd/MM/yyyy").parse(vnsinh);
		//java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		
		gv.setId(ma);
		gv.setTen(vten);
		gv.setNgaysinh(vnsinh);
		gv.setDiaChi(vdchi);
		gv.setSDT(vsdt);
		gv.setNu(vnu);
		gv.setTrinhdo(vtdo);
		gv.setChuyenmon(vchmon);
		
		//list.add(gv);
		
		flag=QLGVDAO.UpdateData( gv, conn);
		
			
		

		List<QLGVEntry> list = QLGVDAO.HienThiGV(conn);

		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyGiangVien.jsp");
		rd.forward(request, response);

	}

}