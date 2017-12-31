package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QLKHDAO;
import DAO.QLLHDAO;
import DB.DBConnection;
import model.QLKHEntry;
import model.QLLHEntry;

/**
 * Servlet implementation class LH_Insert
 */
@WebServlet("/LH_Insert")
public class LH_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LH_Insert() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean flag=false;
		request.setCharacterEncoding("UTF-8");

		Connection conn = (Connection) DBConnection.CreateConnection();
		String vma = request.getParameter("tgv_ma");
		String vngaybd = request.getParameter("tgv_ngaybd");
		String vngayketthuc = request.getParameter("tgv_ngaykt");
		String vphong = request.getParameter("tgv_phong");
		String vmagv = request.getParameter("tgv_magv");
		String vmakh = request.getParameter("tgv_makh");
		
		QLLHEntry gv = new QLLHEntry();
		

		
		
		gv.setId(Integer.parseInt(vma));
		gv.setNgaybatdau(vngaybd);
		gv.setNgayketthuc(vngayketthuc);

		gv.setPhong(vphong);
		gv.setMagiangvien(Integer.parseInt(vmagv));
		gv.setMakhoahoc(Integer.parseInt(vmakh));
		
	
		
		//LOI
		try {
			flag=QLLHDAO.InsertData( gv, conn);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String MS="Không thêm được";
		if(flag==true)
		{
			MS="Đã Thêm  thành công";
		}
		
		

		List<QLLHEntry> list = QLLHDAO.HienThiGV(conn);

		request.setAttribute("entries", list);
		request.setAttribute("Messe", MS);
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyLopHoc.jsp");
		rd.forward(request, response);

	}
}

