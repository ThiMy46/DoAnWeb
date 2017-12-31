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

import DAO.QLTKDAO;
import DB.DBConnection;
import model.QLTKEntry;

/**
 * Servlet implementation class TK_Update
 */
@WebServlet("/TK_Update")
public class TK_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TK_Update() {
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
		
		String vten = request.getParameter("tgv_tdangnhap");
		String vmk = request.getParameter("tgv_mk");
		String vid = request.getParameter("tgv_idmem");
		String vpquyen = request.getParameter("tgv_pquyen");

		QLTKEntry gv = new QLTKEntry();
		
		
		gv.setTendangnhap(vten);
		gv.setMatkhau(vmk);
		gv.setIdmember(Integer.parseInt(vid));
		gv.setPhanquyen(Integer.parseInt(vpquyen));
		
		//list.add(gv);
		
		flag=QLTKDAO.UpdateData( gv, conn);
		
			
		

		List<QLTKEntry> list = QLTKDAO.HienThiGV(conn);

		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyTaiKhoan.jsp");
		rd.forward(request, response);

	}

}