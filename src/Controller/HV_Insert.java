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

import DAO.QLGVDAO;
import DAO.QLHVDAO;
import DB.DBConnection;
import model.QLGVEntry;
import model.QLHVEntry;

/**
 * Servlet implementation class HV_Insert
 */
@WebServlet("/HV_Insert")
public class HV_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HV_Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean flag=false;
		request.setCharacterEncoding("UTF-8");

		Connection conn = (Connection) DBConnection.CreateConnection();
		String vma = request.getParameter("tgv_ma");
		String vten = request.getParameter("tgv_ten");
		String vnsinh = request.getParameter("tgv_nsinh");
		String vdchi = request.getParameter("tgv_dchi");
		String vsdt = request.getParameter("tgv_sdt");
		String vnu = request.getParameter("tgv_nu");
		
		
		QLHVEntry gv = new QLHVEntry();
		
		
		
		gv.setId(Integer.parseInt(vma));
		gv.setTen(vten);
		gv.setNgaysinh(vnsinh);
		gv.setDiaChi(vdchi);
		gv.setSDT(vsdt);
		gv.setNu(vnu);
	
		
		//list.add(gv);
		
		//LOI
		try {
			flag=QLHVDAO.InsertData( gv, conn);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String MS="Không thêm được";
		if(flag==true)
		{
			MS="Đã Thêm  thành công";
		}
		
		

		List<QLHVEntry> list = QLHVDAO.HienThiHV(conn);

		request.setAttribute("entries", list);
		request.setAttribute("Messe", MS);
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyHocVien.jsp");
		rd.forward(request, response);

	}

}