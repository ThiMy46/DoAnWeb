package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QLLHDAO;
import DB.DBConnection;
import model.QLLHEntry;

/**
 * Servlet implementation class LH_Update
 */
@WebServlet("/LH_Update")
public class LH_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LH_Update() {
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
			
		
			
			
			
			//list.add(gv);
			
			flag=QLLHDAO.UpdateData( gv, conn);
			
				
			

			List<QLLHEntry> list = QLLHDAO.HienThiGV(conn);

			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyLopHoc.jsp");
			rd.forward(request, response);

		}
}

	