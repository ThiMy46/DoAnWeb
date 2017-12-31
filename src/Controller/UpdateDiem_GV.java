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

import DAO.QLDiemDAO_GV;
import DAO.QLLHDAO;
import DB.DBConnection;
import model.QLDiemEntry_GV;
import model.QLLHEntry;

/**
 * Servlet implementation class UpdateDiem_GV
 */
@WebServlet("/UpdateDiem_GV")
public class UpdateDiem_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDiem_GV() {
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
		
		String vma = request.getParameter("sgv_ma");
		String vma2 = request.getParameter("sgv_ma2");
		String diem1 = request.getParameter("sgv_diem1");
		String diem2 = request.getParameter("sgv_diem2");
		String diem3 = request.getParameter("sgv_diem3");
		String diemck = request.getParameter("sgv_diem4");
	
		

		
		QLDiemEntry_GV gv = new QLDiemEntry_GV();
		
		gv.setId(Integer.parseInt(vma));
		gv.setMalop(Integer.parseInt(vma2));

		
		gv.setDiem1(Double.parseDouble(diem1));
		gv.setDiem2(Double.parseDouble(diem2));
		gv.setDiem3(Double.parseDouble(diem3));
		gv.setDiemcuoiky(Double.parseDouble(diemck));

		//list.add(gv);
		
		flag=QLDiemDAO_GV.UpdateData( gv, conn);
		
			
		
		List<QLDiemEntry_GV> item = QLDiemDAO_GV.HienThiHV(conn, Integer.parseInt(vma2));

		request.setAttribute("entries", item);
		
		RequestDispatcher rd= request.getRequestDispatcher("/GiangVien/HienThiDiem.jsp");
		rd.forward(request, response);
	}
}

