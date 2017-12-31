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

import DAO.QLHVDAO;
import DB.DBConnection;
import model.QLHVEntry;

/**
 * Servlet implementation class HV_Update
 */
@WebServlet("/HV_Update")
public class HV_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HV_Update() {
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
			int ma = Integer.parseInt(request.getParameter("sgv_ma"));
			//int ma = Integer.parseInt(sgv_ma);
			//String vma = request.getParameter("tgv_ma");
			String vten = request.getParameter("sgv_ten");
			String vnsinh = request.getParameter("sgv_nsinh");
			String vdchi = request.getParameter("sgv_dchi");
			String vsdt = request.getParameter("sgv_sdt");
			String vnu = request.getParameter("sgv_nu");

			
			QLHVEntry gv = new QLHVEntry();
			
			
			
			gv.setId(ma);
			gv.setTen(vten);
			gv.setNgaysinh(vnsinh);
			gv.setDiaChi(vdchi);
			gv.setSDT(vsdt);
			gv.setNu(vnu);
	
			
			//list.add(gv);
			
			flag=QLHVDAO.UpdateData( gv, conn);
			
				
			

			List<QLHVEntry> list = QLHVDAO.HienThiHV(conn);

			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyHocVien.jsp");
			rd.forward(request, response);

		}

	}